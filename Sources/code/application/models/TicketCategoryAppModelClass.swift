

import Foundation
public extension ApplicationClient {
    /*
         Model: TicketCategory
         Used By: Lead
     */
    class TicketCategory: Codable {
        public var key: String

        public var display: String

        public var form: CustomForm?

        public var subCategories: [TicketSubCategory]?

        public var feedbackForm: TicketFeedbackForm?

        public enum CodingKeys: String, CodingKey {
            case key

            case display

            case form

            case subCategories = "sub_categories"

            case feedbackForm = "feedback_form"
        }

        public init(display: String, feedbackForm: TicketFeedbackForm? = nil, form: CustomForm? = nil, key: String, subCategories: [TicketSubCategory]? = nil) {
            self.key = key

            self.display = display

            self.form = form

            self.subCategories = subCategories

            self.feedbackForm = feedbackForm
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            display = try container.decode(String.self, forKey: .display)

            do {
                form = try container.decode(CustomForm.self, forKey: .form)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subCategories = try container.decode([TicketSubCategory].self, forKey: .subCategories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                feedbackForm = try container.decode(TicketFeedbackForm.self, forKey: .feedbackForm)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(form, forKey: .form)

            try? container.encodeIfPresent(subCategories, forKey: .subCategories)

            try? container.encodeIfPresent(feedbackForm, forKey: .feedbackForm)
        }
    }
}
