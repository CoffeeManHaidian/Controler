from pathlib import Path
from pypdf import PdfReader


pdf = Path(r"D:\Controler\k7_sfp_v3_final_V20160304_C.pdf")
reader = PdfReader(str(pdf))

for page_no in [2, 4, 5, 9, 14]:
    text = reader.pages[page_no - 1].extract_text() or ""
    print(f"\n===== PAGE {page_no} =====")
    print(text)
