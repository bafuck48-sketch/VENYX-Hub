-- ==========================================
-- VENYX Hub
-- เเปลโดย : บาฟัค
-- คำศัพท์จาก : VENYX Hub
-- ==========================================

local GuiService = gethui and gethui() or game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")

-- ==========================================
-- 1. DICTIONARY
-- ==========================================

local dict = {
    -- เมนูหลัก
    ["Home"] = "หน้าแรก",
    ["Steal"] = "ขโมย",
    ["Farm"] = "ฟาร์ม",
    ["Event"] = "กิจกรรม",
    ["Player"] = "ผู้เล่น",
    ["System"] = "ระบบ",
    ["Search"] = "ค้นหา",
    ["Filter"] = "ค้นหา",
    ["Pick one"] = "เลือกหนึ่งอย่าง",
    ["Pick any"] = "เลือกได้หลายอย่าง",
    ["Default"] = "ค่าเริ่มต้น",
    ["Clear"] = "ล้าง",
    ["Select all"] = "เลือกทั้งหมด",
    ["None"] = "ไม่มี",
    ["Off"] = "ปิด",
    ["Always"] = "ตลอดเวลา",
    ["Status"] = "สถานะ",
    ["Show"] = "แสดงผล",
    ["Next"] = "ถัดไป",
    ["Stage"] = "ด่าน",
    ["Progress"] = "ความคืบหน้า",
    ["Not accepted"] = "ยังไม่รับ",
    ["Locked"] = "ล็อก",
    ["Value"] = "มูลค่า",
    ["Rarity"] = "ความหายาก",
    ["Weight"] = "น้ำหนัก",
    ["Size"] = "ขนาด",
    ["Area"] = "พื้นที่",
    ["Name"] = "ชื่อ",
    ["Icon"] = "ไอคอน",
    ["Match"] = "เงื่อนไข",
    ["Best value"] = "มูลค่าดีที่สุด",
    ["Lowest value"] = "มูลค่าต่ำสุด",
    ["Best rarity"] = "ความหายากดีที่สุด",
    ["Best mutation"] = "การกลายพันธุ์ดีที่สุด",
    ["Biggest"] = "ใหญ่ที่สุด",
    ["Closest"] = "ใกล้ที่สุด",
    ["Delta"] = "เดลต้า",

    -- หน้าแรก (Home / Session)
    ["Welcome back"] = "ยินดีต้อนรับกลับ",
    ["Rejoin"] = "เข้าห้องใหม่",
    ["Server hop"] = "สุ่มเซิร์ฟเวอร์",
    ["Unload hub"] = "ปิดสคริปต์",
    ["Chilli Hub"] = "Chilli Hub",
    ["WHAT'S NEW"] = "มีอะไรใหม่",
    ["Fixed lag back with the Tween delivery method"] = "แก้ไขปัญหากระตุกกลับเมื่อใช้วิธีเคลื่อนที่",
    ["Welcome to Venyx 1.0.2! Join our Discord for updates and support"] = "ยินดีต้อนรับสู่ Venyx 1.0.2! เข้าร่วม Discord ของเราเพื่อรับอัปเดตและช่วยเหลือ",
    ["SESSION"] = "เซสชัน",
    ["STOLEN"] = "ขโมยแล้ว",
    ["LAST EGG"] = "ไข่ล่าสุด",
    ["PLACED"] = "วางแล้ว",
    ["MONEY /S"] = "เงิน / วินาที",
    ["NIGHT IN"] = "กลางคืนในอีก",
    ["now, day in"] = "ตอนนี้, กลางวันในอีก",
    ["SESSION TIME"] = "เวลาเซสชัน",
    ["BEST STEAL"] = "ขโมยดีที่สุด",
    ["EGG BAG"] = "กระเป๋าไข่",
    ["OPEN"] = "เปิด",
    ["PET BAG"] = "กระเป๋าสัตว์เลี้ยง",
    ["Venyx Discord"] = "Venyx ดิสคอร์ด",
    ["Updates, keys, support"] = "อัปเดต, คีย์, ช่วยเหลือ",
    ["Copy invite"] = "คัดลอกลิงก์เชิญ",

    -- หน้าสัตว์เลี้ยง / ไข่ (Pets / Eggs)
    ["ALL"] = "ทั้งหมด",
    ["READY"] = "พร้อม",
    ["GROWING"] = "กำลังโต",
    ["IN BAG"] = "ในกระเป๋า",
    ["Hold egg"] = "ถือไข่",
    ["SIZE"] = "ขนาด",
    ["WEIGHT"] = "น้ำหนัก",
    ["GOLDEN"] = "ทอง",
    ["Equipped"] = "สวมใส่อยู่",
    ["Show owned only"] = "แสดงเฉพาะที่มี",
    ["Show full eggs"] = "แสดงไข่ที่โตเต็มที่",
    ["Sort by"] = "เรียงลำดับตาม",
    ["Spirit Panda"] = "แพนด้าวิญญาณ",
    ["Tralaledon"] = "ทราลาเลดอน",
    ["Mantaris"] = "แมนทาริส",
    ["Winged Lamb"] = "ลูกแกะมีปีก",
    ["Normal"] = "ปกติ",
    ["Shiny"] = "มันวาว",
    ["Rainbow"] = "สายรุ้ง",
    ["Sell"] = "ขาย",

    -- หน้าฟาร์ม / งาน (Farm / Tasks)
    ["Priority"] = "ลำดับความสำคัญ",
    ["TASK ORDER"] = "ลำดับงาน",
    ["Top goes first. A carried egg is always delivered first, and before the field opens every task waits in the safe zone."] = "งานบนสุดจะทำก่อน ไข่ที่ถืออยู่จะถูกนำส่งก่อนเสมอ และก่อนที่สนามจะเปิด งานทั้งหมดจะรออยู่ในโซนปลอดภัย",
    ["DOING"] = "กำลังทำ",
    ["WAITING"] = "รออยู่",
    ["Idle"] = "ว่าง",
    ["Nothing"] = "ไม่มี",
    ["Steal filter eggs"] = "ขโมยไข่ตามตัวกรอง",
    ["Shooting Star"] = "ดาวตก",
    ["Racing Event"] = "กิจกรรมแข่งรถ",
    ["Butterfly"] = "ผีเสื้อ",
    ["Steal wisp eggs"] = "ขโมยไข่วิสป์",
    ["Wisp"] = "วิสป์",
    ["Steal missing index"] = "ขโมยดัชนีที่ขาด",
    ["Steal lab eggs"] = "ขโมยไข่แล็บ",
    ["Place"] = "วาง",
    ["Butterfly machine"] = "เครื่องจับผีเสื้อ",

    -- หน้ากิจกรรม (Event)
    ["ADMIN ABUSE"] = "การใช้สิทธิ์แอดมิน",
    ["No admin boost right now"] = "ไม่มีบูสต์แอดมินในขณะนี้",
    ["Instant steal (Admin Treadmill)"] = "ขโมยทันที (ลู่วิ่งแอดมิน)",
    ["Use admin treadmill"] = "ใช้ลู่วิ่งแอดมิน",
    ["MINIGAME EGGS"] = "ไข่มินิเกม",
    ["Waiting for Red Light Green Light or T-Rex Run"] = "กำลังรอ Red Light Green Light หรือ T-Rex Run",
    ["Auto steal minigame egg"] = "ขโมยไข่มินิเกมอัตโนมัติ",
    ["CAPTURE THE EGG"] = "จับไข่",
    ["Auto capture event egg"] = "จับไข่กิจกรรมอัตโนมัติ",
    ["Take it from the holder"] = "แย่งจากคนที่ถืออยู่",
    ["Hold height"] = "ความสูงในการถือ",
    ["Keep away"] = "ระยะห่างเพื่อหนี",
    ["Race"] = "แข่งรถ",
    ["Star"] = "ดาว",
    ["Lab"] = "แล็บ",
    ["AA"] = "ทั้งหมด",
    ["RACING EVENT"] = "กิจกรรมแข่งรถ",
    ["NEXT RACE"] = "รอบถัดไป",
    ["WINS"] = "ชนะ",
    ["TROPHIES"] = "ถ้วยรางวัล",
    ["Auto race"] = "แข่งรถอัตโนมัติ",
    ["Race speed"] = "ความเร็วในการแข่ง",
    ["Lower it if wins do not count"] = "ลดลงหากการชนะไม่ถูกนับ",
    ["Use power-ups"] = "ใช้ไอเท็มเพิ่มพลัง",
    ["REWARDS"] = "รางวัล",
    ["Auto claim rewards"] = "รับรางวัลอัตโนมัติ",
    ["Auto equip racer"] = "สวมนักแข่งอัตโนมัติ",
    ["Racer"] = "นักแข่ง",
    ["Best owned"] = "ที่ดีที่สุดที่มี",
    ["Ostrich"] = "นกกระจอกเทศ",
    ["Auto buy shop"] = "ซื้อของร้านอัตโนมัติ",
    ["Shop items"] = "ไอเท็มร้านค้า",
    ["Nitro"] = "ไนโตร",
    ["Cash Booster"] = "บูสต์เงิน",
    ["Speed Boost"] = "บูสต์ความเร็ว",
    ["Treadmill Boost"] = "บูสต์ลู่วิ่ง",
    ["Racing Bat"] = "ไม้ตีแข่งรถ",
    ["SHOOTING STAR"] = "ดาวตก",
    ["STAR"] = "ดาว",
    ["LANDS IN"] = "ตกลงใน",
    ["CAUGHT"] = "จับได้",
    ["Auto catch shooting star"] = "จับดาวตกอัตโนมัติ",
    ["EXPIRES IN"] = "หมดอายุใน",
    ["SLIPPED"] = "หลุดมือ",
    ["TRIES"] = "จำนวนครั้งที่ลอง",
    ["DISTANCE"] = "ระยะทาง",
    ["BUTTERFLY BLOOM"] = "ดอกไม้ผีเสื้อ",
    ["Auto butterfly bloom"] = "ผีเสื้อบานอัตโนมัติ",
    ["EMERALD"] = "มรกต",
    ["SAPPHIRE"] = "ไพลิน",
    ["AMETHYST"] = "อเมทิสต์",
    ["RADIANT"] = "เรืองแสง",
    ["ESSENCE"] = "เอสเซนส์",
    ["Catch mode"] = "โหมดการจับ",
    ["Catch priority"] = "ลำดับความสำคัญในการจับ",
    ["Catch"] = "จับ",
    ["Catch speed"] = "ความเร็วในการจับ",
    ["Stand"] = "ยืนอยู่กับที่",
    ["Patrol"] = "ลาดตระเวน",
    ["Circle"] = "วนรอบ",
    ["Chase"] = "ไล่ล่า",
    ["Rarest"] = "หายากที่สุด",
    ["BUTTERFLY MACHINE"] = "เครื่องจับผีเสื้อ",
    ["Auto trade up"] = "อัปเกรดอัตโนมัติ",
    ["Trade"] = "แลกเปลี่ยน",
    ["Smart trade for essence"] = "แลกเอสเซนส์อย่างชาญฉลาด",
    ["Auto craft essence"] = "คราฟต์เอสเซนส์อัตโนมัติ",
    ["Emerald to Sapphire"] = "มรกตเป็นไพลิน",
    ["Sapphire to Amethyst"] = "ไพลินเป็นอเมทิสต์",
    ["Amethyst to Radiant"] = "อเมทิสต์เป็นเรืองแสง",
    ["WISP COMPANION"] = "เพื่อนวิสป์",
    ["Off - quest not accepted yet"] = "ปิด - ยังไม่ได้รับเควส",
    ["Auto wisp quest"] = "ทำเควสวิสป์อัตโนมัติ",
    ["Auto banjo cricket"] = "จับจิ้งหรีดแบนโจอัตโนมัติ",
    ["Lab is locked on this account"] = "แล็บถูกล็อกในบัญชีนี้",
    ["Lab banners"] = "แบนเนอร์แล็บ",
    ["Auto trade in"] = "แลกเปลี่ยนอัตโนมัติ",
    ["Auto reroll recipe"] = "สุ่มสูตรใหม่อัตโนมัติ",
    ["Place lab reward eggs"] = "วางไข่รางวัลแล็บ",
    ["LAB STOCK"] = "สต็อกแล็บ",
    ["Stock lab eggs"] = "ตุนไข่แล็บ",
    ["Stock for banners"] = "ตุนสำหรับแบนเนอร์",
    ["Stock per egg"] = "ตุนต่อไข่ 1 ฟอง",
    ["Biohazard Pets"] = "สัตว์ไบโอฮาซาร์ด",
    ["Experimental Pets"] = "สัตว์ทดลอง",
    ["Unstable DNA"] = "ดีเอ็นเอไม่เสถียร",
    ["LAB ODDS"] = "โอกาสแล็บ",
    ["Banner Chance"] = "โอกาสออกแบนเนอร์",
    ["Upcoming banners"] = "แบนเนอร์ที่กำลังจะมาถึง",

    -- แผงขโมย (Steal Panel)
    ["Steal Panel"] = "แผงขโมย",
    ["Auto Steal"] = "ขโมยอัตโนมัติ",
    ["Auto Steal OFF"] = "ขโมยอัตโนมัติ ปิด",
    ["Auto Steal ON"] = "ขโมยอัตโนมัติ เปิด",
    ["Show: All"] = "แสดง: ทั้งหมด",
    ["STEAL"] = "ขโมย",
    ["QUICK BAR"] = "แถบด่วน",
    ["Go to egg"] = "ไปที่ไข่",
    ["Tween"] = "เคลื่อนที่",
    ["Teleport to egg"] = "วาร์ปไปหาไข่",
    ["Light Dark zone"] = "โซนมืดสว่าง",
    ["Fast tween to egg"] = "เคลื่อนที่เร็วไปหาไข่",
    ["Delivery method"] = "วิธีนำส่ง",
    ["Instant steps"] = "ขั้นตอนทันที",
    ["Tween speed"] = "ความเร็วในการเคลื่อนที่",
    ["Steal missing index eggs"] = "ขโมยไข่ที่ขาดดัชนี",
    ["Steal from other players"] = "ขโมยจากผู้เล่นอื่น",
    ["Anti guard"] = "ป้องกันการ์ด",
    ["Drop eggs at safe zone"] = "ทิ้งไข่ที่โซนปลอดภัย",
    ["AUTO HOP SERVER"] = "สลับเซิร์ฟเวอร์อัตโนมัติ",
    ["Auto hop"] = "สลับเซิร์ฟเวอร์อัตโนมัติ",
    ["Hop when"] = "สลับเซิร์ฟเวอร์เมื่อ",
    ["Rare from"] = "หายากจาก",
    ["First hop after"] = "สลับครั้งแรกหลังจาก",
    ["EGG PREDICTOR"] = "คาดการณ์ไข่",
    ["EGG SHOWCASE"] = "ตู้โชว์ไข่",
    ["Sort eggs"] = "เรียงลำดับไข่",
    ["Calculate mutations"] = "คำนวณการกลายพันธุ์",
    ["Cards show the value with these mutations added"] = "การ์ดจะแสดงมูลค่าเมื่อรวมการกลายพันธุ์แล้ว",
    ["Preview card"] = "ดูตัวอย่างการ์ด",
    ["FILTER"] = "ตัวกรอง",
    ["Zones"] = "โซน",
    ["Steal first"] = "ขโมยก่อน",
    ["Mutations"] = "การกลายพันธุ์",
    ["Rarities"] = "ความหายาก",
    ["Only these eggs"] = "เฉพาะไข่เหล่านี้",
    ["Min value /s"] = "มูลค่าขั้นต่ำ / วินาที",
    ["Sell cheapest egg when bag is full"] = "ขายไข่ที่ถูกที่สุดเมื่อกระเป๋าเต็ม",
    ["Keep lab eggs"] = "เก็บไข่แล็บ",
    ["Only below /s"] = "เฉพาะที่ต่ำกว่า / วินาที",
["Teleport zones"] = "โซนที่วาร์ปไป",
    ["Delivery speed"] = "ความเร็วในการนำส่ง",
    ["Change if steal fails"] = "เปลี่ยนหากการขโมยล้มเหลว",
    ["Going to Snowy Owl"] = "กำลังไปที่ Snowy Owl",

    -- โซน
    ["Enchanted Forest"] = "ป่าเวทมนตร์",
    ["Light Dark"] = "โซนมืดสว่าง",
    ["Titan Temple"] = "วิหารไททัน",
    ["Cherry Blossom"] = "ดอกซากุระ",
    ["Prehistoric"] = "ยุคก่อนประวัติศาสตร์",
    ["Abyss Ocean"] = "มหาสมุทรลึก",
    ["Volcano"] = "ภูเขาไฟ",
    ["Snow"] = "หิมะ",
    ["Jungle"] = "ป่า",
    ["Desert"] = "ทะเลทราย",
    ["Lake"] = "ทะเลสาบ",
    ["Forest"] = "ป่าไม้",

    -- ฟาร์ม
    ["Pen"] = "คอก",
    ["Treadmill"] = "ลู่วิ่ง",
    ["Mutate"] = "กลายพันธุ์",
    ["Fuse"] = "ผสม",
    ["AUTO PLACE"] = "วางอัตโนมัติ",
    ["AUTO HATCH"] = "ฟักอัตโนมัติ",
    ["Auto place"] = "วางอัตโนมัติ",
    ["Place when"] = "วางเมื่อไหร่",
    ["Place first"] = "วางก่อน",
    ["Auto hatch"] = "ฟักอัตโนมัติ",
    ["Equip best pets"] = "สวมสัตว์เลี้ยงที่ดีที่สุด",
    ["READY NOW"] = "พร้อมแล้ว",
    ["HATCHED"] = "ฟักแล้ว",
    ["Steal is idle"] = "ขโมยว่างอยู่",
    ["Right after a steal"] = "หลังขโมยทันที",
    ["Only at night"] = "เฉพาะตอนกลางคืน",
    ["KEEP EGGS"] = "เก็บไข่",
    ["Eggs to keep"] = "ไข่ที่ต้องเก็บ",
    ["TREADMILL"] = "ลู่วิ่ง",
    ["Auto treadmill"] = "ลู่วิ่งอัตโนมัติ",
    ["Auto upgrade treadmill"] = "อัปเกรดลู่วิ่งอัตโนมัติ",
    ["SPEED POWER"] = "พลังความเร็ว",
    ["CASH"] = "เงินสด",
    ["PROGRESS"] = "ความคืบหน้า",
    ["Auto upgrade base"] = "อัปเกรดฐานอัตโนมัติ",
    ["Auto buy trails"] = "ซื้อเทรลอัตโนมัติ",
    ["Auto claim offline cash"] = "รับเงินออฟไลน์อัตโนมัติ",
    ["Auto claim index rewards"] = "รับรางวัลดัชนีอัตโนมัติ",
    ["AUTO MUTATE"] = "กลายพันธุ์อัตโนมัติ",
    ["Auto mutate"] = "กลายพันธุ์อัตโนมัติ",
    ["Use items"] = "ใช้ไอเท็ม",
    ["Mutate first"] = "กลายพันธุ์ก่อน",
    ["Auto buy Nitro"] = "ซื้อไนโตรอัตโนมัติ",
    ["MUTATE FILTER"] = "ตัวกรองการกลายพันธุ์",
    ["Skip eggs with"] = "ข้ามไข่ที่มี",
    ["PETS"] = "สัตว์เลี้ยง",
    ["EGGS"] = "ไข่",
    ["Auto sell pets"] = "ขายสัตว์เลี้ยงอัตโนมัติ",
    ["Auto sell eggs"] = "ขายไข่อัตโนมัติ",
    ["Sell rarities"] = "ขายตามความหายาก",
    ["Never sell"] = "ห้ามขาย",
    ["Only mutations"] = "เฉพาะการกลายพันธุ์",
    ["Keep mutated"] = "เก็บตัวที่กลายพันธุ์",
    ["Sell matching pets now"] = "ขายสัตว์เลี้ยงที่เข้าเงื่อนไขเลย",
    ["Sell matching eggs now"] = "ขายไข่ที่เข้าเงื่อนไขเลย",
    ["LAB EGGS"] = "ไข่แล็บ",
    ["Auto sell lab eggs"] = "ขายไข่แล็บอัตโนมัติ",
    ["Sell matching lab eggs now"] = "ขายไข่แล็บที่เข้าเงื่อนไขเลย",
    ["FAVORITE"] = "รายการโปรด",
    ["Auto favorite"] = "ตั้งเป็นโปรดอัตโนมัติ",
    ["All picked rules"] = "ทุกเงื่อนไขที่เลือก",
    ["Any picked rule"] = "เงื่อนไขใดเงื่อนไขหนึ่ง",
    ["Always favorite"] = "ตั้งเป็นโปรดเสมอ",
    ["Favorite equipped"] = "ตั้งตัวที่ใส่อยู่เป็นโปรด",
    ["Unfavorite pets not matching"] = "ยกเลิกโปรดสัตว์ที่ไม่เข้าเงื่อนไข",
    ["FUSE MACHINE"] = "เครื่องผสม",
    ["Auto fuse"] = "ผสมอัตโนมัติ",
    ["Fuse first"] = "ผสมก่อน",
    ["Use pets"] = "ใช้สัตว์เลี้ยง",
    ["Skip mutated"] = "ข้ามตัวที่กลายพันธุ์",
    ["Eject odd pets"] = "ดีดสัตว์แปลกออก",
    ["FUSE FILTER"] = "ตัวกรองการผสม",
    ["Only these pets"] = "เฉพาะสัตว์เลี้ยงเหล่านี้",
    ["Never fuse"] = "ห้ามผสม",
    ["FUSE PREDICTOR"] = "คาดการณ์การผสม",
    ["Lowest rarity"] = "ความหายากต่ำสุด",
    ["Highest rarity"] = "ความหายากสูงสุด",
    ["Most copies"] = "มีจำนวนมากสุด",
    ["Lowest value first"] = "มูลค่าต่ำสุดก่อน",
    ["Highest value first"] = "มูลค่าสูงสุดก่อน",

    -- ผู้เล่น (Player)
    ["ESP"] = "มองทะลุ",
    ["Move"] = "การเคลื่อนที่",
    ["Combat"] = "การต่อสู้",
    ["FIELD EGGS"] = "ไข่ในสนาม",
    ["Egg ESP"] = "มองทะลุไข่",
    ["Fixed size"] = "ขนาดคงที่",
    ["OTHERS"] = "อื่นๆ",
    ["Pen egg ESP"] = "มองทะลุไข่ในคอก",
    ["Other pens ESP"] = "มองคอกอื่น",
    ["Guard ESP"] = "มองทะลุยาม",
    ["Hide sleeping guards"] = "ซ่อนยามที่กำลังหลับ",
    ["Player ESP"] = "มองทะลุผู้เล่น",
    ["ESP size"] = "ขนาดการมองทะลุ",
    ["MOVEMENT"] = "การเคลื่อนไหว",
    ["Speed boost"] = "เพิ่มความเร็ว",
    ["Boost speed"] = "ระดับความเร็ว",
    ["Infinite jump"] = "กระโดดไม่จำกัด",
    ["God mode"] = "โหมดเทพ",
    ["PROTECTION"] = "การปกป้อง",
    ["Anti ragdoll"] = "กันล้ม",
    ["Ignore traps"] = "เพิกเฉยกับดัก",
    ["Instant prompts"] = "โต้ตอบทันที",
    ["Anti AFK"] = "กันหลุด",
    ["Invisible"] = "ล่องหน",
    ["AUTO HIT"] = "ตีอัตโนมัติ",
    ["Auto hit"] = "ตีอัตโนมัติ",
    ["Hit who"] = "ตีใคร",
    ["Chosen player"] = "ผู้เล่นที่เลือก",
    ["Chase speed"] = "ความเร็วในการไล่",
    ["Nearest player"] = "ผู้เล่นที่ใกล้ที่สุด",
    ["Egg holders"] = "คนที่ถือไข่",
    ["HIT AURA"] = "ออร่าตี",
    ["Hit aura"] = "ออร่าตี",
    ["Skip friends"] = "ข้ามเพื่อน",
    ["WEAPONS"] = "อาวุธ",
    ["Use weapons"] = "ใช้อาวุธ",
    ["Hold each"] = "ถืออันละ",
    ["Prehistoric Bat"] = "ไม้ตียุคก่อนประวัติศาสตร์",
    ["Flyswatter"] = "ไม้ตบแมลง",

    -- ระบบ (System)
    ["Server"] = "เซิร์ฟเวอร์",
    ["Webhook"] = "เว็บฮุค",
    ["Optimizer"] = "ปรับแต่งระบบ",
    ["Interface"] = "หน้าจอ",
    ["Config"] = "การตั้งค่า",
    ["SERVER"] = "เซิร์ฟเวอร์",
    ["Hop to"] = "สลับไปที่",
    ["Least players"] = "ผู้เล่นน้อยสุด",
    ["Most players"] = "ผู้เล่นมากสุด",
    ["Random"] = "สุ่ม",
    ["Hop server"] = "สลับเซิร์ฟเวอร์",
    ["Rejoin this server"] = "เข้าสู่เซิร์ฟเวอร์เดิม",
    ["Copy Job ID"] = "คัดลอกไอดีเซิร์ฟเวอร์",
    ["JOIN AND STAY"] = "เข้าร่วมและอยู่ต่อ",
    ["Job ID"] = "ไอดีเซิร์ฟเวอร์",
    ["Paste a Job ID"] = "วางไอดีเซิร์ฟเวอร์",
    ["Join that server"] = "เข้าร่วมเซิร์ฟเวอร์นั้น",
    ["Join"] = "เข้าร่วม",
    ["Rejoin on kick"] = "เข้าต่อเมื่อโดนเตะ",
    ["Auto load script"] = "โหลดสคริปต์อัตโนมัติ",
    ["DISCORD WEBHOOK"] = "เว็บฮุคดิสคอร์ด",
    ["Webhook URL"] = "ลิงก์เว็บฮุค",
    ["Ping everyone"] = "แจ้งเตือนทุกคน",
    ["Ping user ID"] = "แจ้งเตือนไอดีผู้ใช้",
    ["Ping role ID"] = "แจ้งเตือนไอดียศ",
    ["Discord user ID"] = "ไอดีผู้ใช้ดิสคอร์ด",
    ["Discord role ID"] = "ไอดียศดิสคอร์ด",
    ["POSTED"] = "โพสต์แล้ว",
    ["Send a test post"] = "ส่งข้อความทดสอบ",
    ["Test"] = "ทดสอบ",
    ["WHAT TO POST"] = "สิ่งที่ต้องการโพสต์",
    ["Post stolen eggs"] = "โพสต์ไข่ที่ขโมยได้",
    ["Post fused eggs"] = "โพสต์ไข่ที่ผสมได้",
    ["Post when bag is full"] = "โพสต์เมื่อกระเป๋าเต็ม",
    ["GRAPHICS"] = "กราฟิก",
    ["Low graphics"] = "กราฟิกต่ำ",
    ["Disable 3D Render"] = "ปิดเรนเดอร์ 3D",
    ["Background color"] = "สีพื้นหลัง",
    ["Black"] = "ดำ",
    ["White"] = "ขาว",
    ["Hide game UI"] = "ซ่อน UI เกม",
    ["FRAME RATE"] = "เฟรมเรต",
    ["FPS cap"] = "จำกัด FPS",
    ["Show FPS and ping"] = "แสดง FPS และปิง",
    ["BASES"] = "ฐาน",
    ["Hide other players' pets and eggs"] = "ซ่อนสัตว์และไข่ผู้เล่นอื่น",
    ["Hide my pets and eggs"] = "ซ่อนสัตว์และไข่ของฉัน",
    ["QUICK BARS"] = "แถบด่วน",
    ["Show quick bars"] = "แสดงแถบด่วน",
    ["INTERFACE"] = "หน้าจอ",
    ["UI scale"] = "ขนาด UI",
    ["Show / hide UI"] = "แสดง / ซ่อน UI",
    ["Opacity"] = "ความโปร่งใส",
    ["Tone"] = "โทนสี",
    ["Dim the game"] = "หรี่แสงเกม",
    ["THEME"] = "ธีม",
    ["Twilight"] = "สนธยา",
    ["Aurora"] = "ออโรร่า",
    ["Ocean"] = "มหาสมุทร",
    ["Midnight"] = "เที่ยงคืน",
    ["Sakura"] = "ซากุระ",
    ["Onyx"] = "โอникс",
    ["Mono"] = "โมโน",
    ["GAME HUD"] = "HUD ของเกม",
    ["Steal panel button on game HUD"] = "ปุ่มแผงขโมยบน HUD ของเกม",
    ["DEFAULTS"] = "ค่าเริ่มต้น",
    ["Reset to defaults"] = "รีเซ็ตค่าเริ่มต้น",
    ["Reset"] = "รีเซ็ต",
    ["Turn off all toggles"] = "ปิดสวิตช์ทั้งหมด",
    ["Turn off"] = "ปิด",
    ["Clear all quick bars"] = "ล้างแถบด่วนทั้งหมด",
    ["Clear all keybinds"] = "ล้างปุ่มลัดทั้งหมด",
    ["Keybinds"] = "ปุ่มลัด",
    ["Bar size"] = "ขนาดแถบ",
    ["PINS AND KEYBINDS"] = "ปักหมุดและปุ่มลัด",
    ["Find an option"] = "ค้นหาตัวเลือก",
    ["All"] = "ทั้งหมด",
    ["Pinned"] = "ปักหมุดแล้ว",
    ["PIN"] = "ปักหมุด",
    ["CONFIG"] = "การตั้งค่า",
    ["ACTIVE"] = "ใช้งานอยู่",
    ["SAVED CONFIGS"] = "การตั้งค่าที่บันทึกไว้",
    ["Set as active config"] = "ตั้งเป็นค่าที่ใช้งาน",
    ["Set active"] = "ตั้งเป็นใช้งาน",
    ["Save changes"] = "บันทึกการเปลี่ยนแปลง",
    ["Save"] = "บันทึก",
    ["Auto load"] = "โหลดอัตโนมัติ",
    ["Auto save"] = "บันทึกอัตโนมัติ",
    ["PROFILES"] = "โปรไฟล์",
    ["New config name"] = "ชื่อการตั้งค่าใหม่",
    ["Auto if empty"] = "อัตโนมัติหากว่าง",
    ["Create config"] = "สร้างการตั้งค่า",
    ["Create"] = "สร้าง",
    ["Pick to delete"] = "เลือกเพื่อลบ",
    ["Delete picked"] = "ลบที่เลือก",
    ["Delete"] = "ลบ",
    ["Restore deleted"] = "กู้คืนที่ลบ",
    ["Export config"] = "ส่งออกการตั้งค่า",
    ["Import text"] = "นำเข้าข้อความ",
    ["Paste config text"] = "วางข้อความการตั้งค่า",
    ["Import config"] = "นำเข้าการตั้งค่า",
    ["Import"] = "นำเข้า",

    -- สัตว์เลี้ยง & ของในแผง
    ["Gargoyle"] = "การ์กอยล์",
    ["Demon Hound"] = "สุนัขนรก",
    ["Holy Peacock"] = "นกยูงศักดิ์สิทธิ์",
    ["Sacred Moth"] = "ผีเสื้อกลางคืนศักดิ์สิทธิ์",

    -- ความหายาก
    ["Divine"] = "ศักดิ์สิทธิ์",
    ["Eternal"] = "นิรันดร์",
    ["Secret"] = "ลับ",
    ["Cosmic"] = "คอสมิก",
    ["Mythic"] = "มิธิค",
    ["Legendary"] = "ตำนาน",
    ["Epic"] = "อีปิค",
    ["Rare"] = "แรร์",
    ["Uncommon"] = "ไม่ธรรมดา",
    ["Common"] = "ธรรมดา",

    -- การกลายพันธุ์
    ["Fractured"] = "แตกร้าว",
    ["Scrambled"] = "สับสน",
    ["Enchanted"] = "เสริมเสน่ห์",
    ["Bloom"] = "เบ่งบาน",
    ["Golden"] = "ทอง",
    ["Parasite"] = "ปรสิต",
    ["Rainbow"] = "สายรุ้ง",
    ["Silver"] = "เงิน",
    ["Spirit Bloom"] = "วิญญาณเบ่งบาน",
    
    -- แก้ไขเฉพาะเจาะจง
    ["Steal An Egg"] = "แปลโดย : บาฟัค",
}

-- ==========================================
-- 2. LOWERCASE DICTIONARY
-- ==========================================

local lowerDict = {}
for key, value in pairs(dict) do
    lowerDict[string.lower(key)] = value
end

-- ==========================================
-- 3. DYNAMIC TEXT & HARDCODED REPLACEMENTS
-- ==========================================

local function translateDynamicText(txt)
    local newTxt = txt
    newTxt = newTxt:gsub("(%d+) pets", "%1 ตัว")
    newTxt = newTxt:gsub("(%d+) selected", "เลือกแล้ว %1")
    newTxt = newTxt:gsub("(%d+) eggs", "%1 ไข่")
    newTxt = newTxt:gsub("(%d+) ready", "พร้อม %1")
    newTxt = newTxt:gsub("(%d+) growing", "กำลังโต %1")
    newTxt = newTxt:gsub("(%d+) in bag", "ในกระเป๋า %1")
    newTxt = newTxt:gsub("in (%d+)m", "ในอีก %1 นาที")
    newTxt = newTxt:gsub("in (%d+)h (%d+)m", "ในอีก %1 ชม. %2 นาที")
    newTxt = newTxt:gsub("now, day in (%d+)s", "ตอนนี้, กลางวันในอีก %1 วิ")
    
    -- บังคับเปลี่ยนชื่อเกมบน Header ให้เป็นเครดิตผู้แปล
    if newTxt == "Steal An Egg" then
        newTxt = "แปลโดย : บาฟัค"
    end
    
    return newTxt
end

-- ==========================================
-- 4. TRANSLATE OBJECT
-- ==========================================

local function translateText(obj)
    pcall(function()
        if not (obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox")) then
            return
        end

        local currentText = obj.Text
        local dynamicText = translateDynamicText(currentText)

        if dynamicText ~= currentText then
            obj.Text = dynamicText
            currentText = dynamicText
        end

        local cleanText = currentText:gsub("<[^>]+>", ""):gsub("&nbsp;", " "):gsub("&amp;", "&"):match("^%s*(.-)%s*$")
        
        if cleanText and cleanText ~= "" then
            local translated = lowerDict[string.lower(cleanText)]
            if translated then
                obj.Text = translated
            end
        end

        if obj:IsA("TextBox") then
            local placeholder = obj.PlaceholderText or ""
            local cleanPlaceholder = placeholder:gsub("<[^>]+>", ""):gsub("&nbsp;", " "):gsub("&amp;", "&"):match("^%s*(.-)%s*$")
            if cleanPlaceholder and cleanPlaceholder ~= "" then
                local translatedPlaceholder = lowerDict[string.lower(cleanPlaceholder)]
                if translatedPlaceholder then
                    obj.PlaceholderText = translatedPlaceholder
                end
            end
        end
    end)
end

-- ==========================================
-- 5. HOOK OBJECT
-- ==========================================

local function hookObject(obj)
    translateText(obj)

    pcall(function()
        if not (obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox")) then
            return
        end

        if obj:GetAttribute("VenyxTH_Hooked") then
            return
        end

        obj:SetAttribute("VenyxTH_Hooked", true)
        obj:GetPropertyChangedSignal("Text"):Connect(function()
            translateText(obj)
        end)

        if obj:IsA("TextBox") then
            obj:GetPropertyChangedSignal("PlaceholderText"):Connect(function()
                translateText(obj)
            end)
        end
    end)
end

-- ==========================================
-- 6. SCAN & HOOK UI
-- ==========================================

for _, obj in ipairs(GuiService:GetDescendants()) do
    hookObject(obj)
end

GuiService.DescendantAdded:Connect(function(obj)
    task.wait(0.05)
    hookObject(obj)
end)

-- ==========================================
-- 7. NOTIFICATION
-- ==========================================

pcall(function()
    StarterGui:SetCore("SendNotification", {
        Title = "VENYX Hub",
        Text = "โหลดภาษาไทยสำเร็จ",
        Duration = 5
    })
end)

-- ==========================================
-- 8. LOAD VENYX HUB
-- ==========================================

local success, err = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/Venyx/main/VenyxHub"))()
end)

if not success then
    warn("โหลด VENYX ไม่สำเร็จ: " .. tostring(err))
else
    print("โหลด VENYX สำเร็จ")
end