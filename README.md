# switui-DatePicker1
Basic

  " struct DatePicker<Label> where Label : View "

  @State private var date = Date()
  
ใช้ ...Date() สำหรับการกำหนดให้ ผู้ใช้ เลือกปฎิทินย้อนหลัง

ใช้ Date()... สำหรับการกำหนดให้ ผู้ใช้ เลือกปฏิทินไปข้างหน้า
  
  DatePicker("Date", selection: $date, in ...Date(), displayedComponents: .date)
  
displayedComponents: .date ใช้สำหรับปฏิทิน 

displayedComponents: .hourAndMinute ใชกับเวลา ชม:นาที

  DatePicker("Date", selection: $date, in Date...())

เรียกใช้งานทั้งปฏิทิน และ เวลา

หรือถ้าต้องการให้ สามารถใช้ปฏิทินได้ทั้งย้อนหลังและไปข้างหน้า ใช้คำสั่งนี้ : 

  DatePicker("Date", selection: $date)
  
หากต้องการใช้ในรูปแบบ Form ก็แค่เพิ่ม Form {} เข้าไป

  Form {
    DatePicker("Date", selection: $date)
  }

property

กำหนดรูปแบบของปฏิทินได้ด้วย

.datePickerStyle(...ดูข้อมูลเพิ่มเติมได้จาก[ที่นี่](https://developer.apple.com/documentation/swiftui/datepicker)...)
  
  Form {
    DatePicker("Date", selection: $date)
      .datePickerStyle(GraphicalDatePickerStyle())
  }
  
