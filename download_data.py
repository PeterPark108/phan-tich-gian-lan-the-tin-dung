"""Tải bộ dữ liệu Credit Card Fraud Detection (Worldline & ULB Machine Learning Group, giấy phép ODbL).
Bản sao công khai của TensorFlow (giống hệt bản Kaggle mlg-ulb/creditcardfraud, ~150 MB)."""
import urllib.request, pathlib, sys
sys.stdout.reconfigure(encoding="utf-8")
URL = "https://storage.googleapis.com/download.tensorflow.org/data/creditcard.csv"
out = pathlib.Path(__file__).parent / "data"; out.mkdir(exist_ok=True)
f = out / "creditcard.csv"
if f.exists() and f.stat().st_size > 100_000_000:
    print("Đã có sẵn:", f)
else:
    print("Đang tải ~150 MB ..."); urllib.request.urlretrieve(URL, f); print("Đã tải:", f, f.stat().st_size, "bytes")
