

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: ShipmentReason
         Used By: Order
     */
    class ShipmentReason: Codable {
        public var flow: String?

        public var priority: Int?

        public var feedbackType: String?

        public var reasonText: String?

        public var reasonId: Int?

        public var showTextArea: Bool?

        public enum CodingKeys: String, CodingKey {
            case flow

            case priority

            case feedbackType = "feedback_type"

            case reasonText = "reason_text"

            case reasonId = "reason_id"

            case showTextArea = "show_text_area"
        }

        public init(feedbackType: String? = nil, flow: String? = nil, priority: Int? = nil, reasonId: Int? = nil, reasonText: String? = nil, showTextArea: Bool? = nil) {
            self.flow = flow

            self.priority = priority

            self.feedbackType = feedbackType

            self.reasonText = reasonText

            self.reasonId = reasonId

            self.showTextArea = showTextArea
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                flow = try container.decode(String.self, forKey: .flow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                feedbackType = try container.decode(String.self, forKey: .feedbackType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasonText = try container.decode(String.self, forKey: .reasonText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasonId = try container.decode(Int.self, forKey: .reasonId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showTextArea = try container.decode(Bool.self, forKey: .showTextArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(flow, forKey: .flow)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(feedbackType, forKey: .feedbackType)

            try? container.encodeIfPresent(reasonText, forKey: .reasonText)

            try? container.encodeIfPresent(reasonId, forKey: .reasonId)

            try? container.encodeIfPresent(showTextArea, forKey: .showTextArea)
        }
    }
}
