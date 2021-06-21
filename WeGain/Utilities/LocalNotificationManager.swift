//
//  File.swift
//  budgetin
//
//  Created by Dwi Rizki Manggala Putra on 10/04/21.
//

// 1. By matching date
// 2. By time interval



import UIKit

class LocalNotificationManager
{
  struct Notification {
      var id: String
      var title: String
      var datetime: DateComponents
  }

  var notifications = [Notification]()

  func setNotification(notif_id: Int, notifikasi : String, hour: Int, minute: Int){
    let notification =
        Notification(id: "reminder-\(notif_id)", title: notifikasi, datetime: DateComponents(calendar: Calendar.current, hour: hour, minute: minute))


    let content      = UNMutableNotificationContent()
    content.title    = notification.title
    content.sound    = .default

    let trigger = UNCalendarNotificationTrigger(dateMatching: notification.datetime, repeats: true)
    //let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true)


    let request = UNNotificationRequest(identifier: notification.id, content: content, trigger: trigger)

    UNUserNotificationCenter.current().add(request)
  }

  func clearAllNotification(){
    UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
  }

  func listScheduledNotifications()
  {
      UNUserNotificationCenter.current().getPendingNotificationRequests { notifications in

          for notification in notifications {
              print("NOTIF: \(notification)")
          }
      }
  }

  private func requestAuthorization()
  {
      UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in

          if granted == true && error == nil {
              self.scheduleNotifications()
          }
      }
  }

  func schedule()
  {
      UNUserNotificationCenter.current().getNotificationSettings { settings in

          switch settings.authorizationStatus {
          case .notDetermined:
              self.requestAuthorization()
          case .authorized, .provisional:
              self.scheduleNotifications()
          default:
              break // Do nothing
          }
      }
  }

  private func scheduleNotifications()
  {
    setNotification(notif_id: 1, notifikasi: "Atur jadwal makan cepettt", hour: 20, minute: 00)
    setNotification(notif_id: 2, notifikasi: "Lots of small steps every day eventually add up. Let's log your breakfast!", hour: 07, minute: 00)
    setNotification(notif_id: 3, notifikasi: "Lots of small steps every day eventually add up. Let's log your lunch!", hour: 12, minute: 00)
    setNotification(notif_id: 4, notifikasi: "Lots of small steps every day eventually add up. Let's log your dinner!", hour: 18, minute: 00)
  }

}
