

import Foundation
public extension ApplicationClient {
    /*
         Model: TicketCategory
         Used By: Lead
     */
    class TicketCategory: Codable {
        public var display: String

        public var key: String

        public var subCategories: TicketCategory?

        public var groupId: Double?

        public var feedbackForm: FeedbackForm?

        public enum CodingKeys: String, CodingKey {
            case display

            case key

            case subCategories = "sub_categories"

            case groupId = "group_id"

            case feedbackForm = "feedback_form"
        }

        public init(display: String, feedbackForm: FeedbackForm? = nil, groupId: Double? = nil, key: String, subCategories: TicketCategory? = nil) {
            self.display = display

            self.key = key

            self.subCategories = subCategories

            self.groupId = groupId

            self.feedbackForm = feedbackForm
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            display = try container.decode(String.self, forKey: .display)

            key = try container.decode(String.self, forKey: .key)

            do {
                subCategories = try container.decode(TicketCategory.self, forKey: .subCategories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupId = try container.decode(Double.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                feedbackForm = try container.decode(FeedbackForm.self, forKey: .feedbackForm)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(subCategories, forKey: .subCategories)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(feedbackForm, forKey: .feedbackForm)
        }
    }
}
