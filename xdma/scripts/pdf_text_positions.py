from pathlib import Path
from pypdf import PdfReader


pdf = Path(r"D:\Controler\k7_sfp_v3_final_V20160304_C.pdf")
reader = PdfReader(str(pdf))
page_no = 2
page = reader.pages[page_no - 1]

items = []


def visitor(text, cm, tm, font_dict, font_size):
    value = " ".join((text or "").split())
    if not value:
        return
    # tm[4], tm[5] are text coordinates after text matrix transform for most
    # simple schematic PDFs. Good enough for relative placement.
    items.append((float(tm[4]), float(tm[5]), float(font_size), value))


page.extract_text(visitor_text=visitor)

print(f"page {page_no} text items: {len(items)}")
for x, y, size, text in sorted(items, key=lambda item: (-item[1], item[0])):
    if any(key in text for key in ["SYS_CLK", "OSC1", "50M", "BANK 15", "IO_L8", "J27", "J28", "J29", "H29", "L30", "K30", "FPGA_MRCC"]):
        print(f"x={x:8.2f} y={y:8.2f} size={size:4.1f} text={text}")

print("\n--- nearby all items around SYS_CLK_50M coordinates ---")
targets = [(x, y) for x, y, _, text in items if "SYS_CLK_50M" in text]
for tx, ty in targets:
    print(f"\nTARGET at x={tx:.2f} y={ty:.2f}")
    nearby = []
    for x, y, size, text in items:
        if abs(x - tx) < 180 and abs(y - ty) < 120:
            nearby.append((x, y, size, text))
    for x, y, size, text in sorted(nearby, key=lambda item: (-item[1], item[0])):
        print(f"x={x:8.2f} y={y:8.2f} size={size:4.1f} text={text}")
