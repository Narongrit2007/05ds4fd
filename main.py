from fastapi import FastAPI, HTTPException
from pydantic import BaseModel

app = FastAPI()

# 🔐 HWID ที่ได้รับอนุญาตให้ใช้งาน
allowed_hwids = {
    "HWID_1234567890": "User1",
    "HWID_0987654321": "User2"
}

class HWIDRequest(BaseModel):
    hwid: str

@app.post("/verify_hwid")
def verify_hwid(request: HWIDRequest):
    if request.hwid in allowed_hwids:
        return {"status": "success", "user": allowed_hwids[request.hwid]}
    else:
        raise HTTPException(status_code=403, detail="Unauthorized HWID")

