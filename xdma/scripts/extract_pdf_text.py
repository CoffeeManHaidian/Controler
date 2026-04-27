from pathlib import Path
from pypdf import PdfReader


pdf = Path(r"D:\Controler\k7_sfp_v3_final_V20160304_C.pdf")
reader = PdfReader(str(pdf))
print("pages", len(reader.pages))

keys = [
    "CLK",
    "CLOCK",
    "OSC",
    "SYS",
    "SFP",
    "GTX",
    "MGT",
    "BANK",
    "117",
    "AE5",
    "AF5",
    "J8",
    "J7",
    "125",
    "100",
]

for index, page in enumerate(reader.pages, 1):
    text = page.extract_text() or ""
    hits = [key for key in keys if key.lower() in text.lower()]
    sample = " ".join(text.split())[:700]
    print(f"--- page {index} hits={hits} chars={len(text)} ---")
    print(sample)
