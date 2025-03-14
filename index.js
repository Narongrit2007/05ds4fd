const express = require("express");
const app = express();
const port = process.env.PORT || 3000;

app.use(express.json());

// ทดสอบ API
app.get("/", (req, res) => {
  res.send("Hello, Roblox!");
});

// ตัวอย่าง API รับ playerName และคืนค่าเงิน
app.post("/getMoney", (req, res) => {
  const { playerName } = req.body;
  res.json({ playerName, money: 100 });
});

// เริ่มเซิร์ฟเวอร์
app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});