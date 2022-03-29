
import Foundation
public extension PlatformClient {
    /*
         Enum: PriorityEnum
         Used By: Lead
     */
    enum PriorityEnum: String, Codable {
        case low

        case medium

        case high

        case urgent
    }

    /*
         Enum: HistoryTypeEnum
         Used By: Lead
     */
    enum HistoryTypeEnum: String, Codable {
        case rating

        case log

        case comment
    }

    /*
         Enum: TicketAssetTypeEnum
         Used By: Lead
     */
    enum TicketAssetTypeEnum: String, Codable {
        case image

        case video

        case file

        case youtube

        case product

        case collection

        case brand

        case shipment

        case order
    }

    /*
         Enum: TicketSourceEnum
         Used By: Lead
     */
    enum TicketSourceEnum: String, Codable {
        case platformPanel = "platform_panel"

        case salesChannel = "sales_channel"
    }

    /*
         Enum: SubscriberStatus
         Used By: Webhook
     */
    enum SubscriberStatus: String, Codable {
        case active

        case inactive

        case blocked
    }
}
