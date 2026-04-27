from pathlib import Path
from pypdf import PdfReader


pdf = Path(r"D:\Controler\k7_sfp_v3_final_V20160304_C.pdf")
reader = PdfReader(str(pdf))
page = reader.pages[3]

items = []


def visitor(text, cm, tm, font_dict, font_size):
    value = " ".join((text or "").split())
    if value:
        items.append((float(tm[4]), float(tm[5]), float(font_size), value))


page.extract_text(visitor_text=visitor)
for target in ["sfp3_txfault", "sfp3_los", "sfp3_txdisable", "sfp3_mod_def0", "sfp3_mod_def1", "sfp3_mod_def2"]:
    print(f"\n=== {target} ===")
    targets = [(x, y) for x, y, _, text in items if target in text]
    for tx, ty in targets:
        print(f"TARGET x={tx:.2f} y={ty:.2f}")
        nearby = [
            (x, y, size, text)
            for x, y, size, text in items
            if abs(x - tx) < 170 and abs(y - ty) < 80
        ]
        for x, y, size, text in sorted(nearby, key=lambda item: (-item[1], item[0])):
            print(f"x={x:8.2f} y={y:8.2f} size={size:4.1f} text={text}")
