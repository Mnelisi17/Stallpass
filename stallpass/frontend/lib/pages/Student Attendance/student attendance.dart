package your.package.name
import android.os.Bundle
import android.widget.LinearLayout
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity


class AttendanceActivity : AppCompatActivity() {

  data class AttendanceEvent(val date: String, val title: String)

  override fun onCreate(savedInstanceState: Bundle?) {
  super.onCreate(savedInstanceState)
  setContentView(R.layout.activity_attendance)

  val events = listOf(
  AttendanceEvent("26/04/2025", "Huawei Hackathon"),
  AttendanceEvent("05/05/2025", "IT Database Challenge"),
  AttendanceEvent("09/05/2025", "Algorithms Session 1")
  )

  val eventsContainer = findViewById<LinearLayout>(R.id.eventsContainer)
  for (event in events) {
  val eventView = TextView(this).apply {
  text = "✔ ${event.date}  -  ${event.title}"
  textSize = 16f
  setPadding(0, 12, 0, 12)
  setTextColor(resources.getColor(android.R.color.black))
  }
  eventsContainer.addView(eventView)
  }
  }
}
