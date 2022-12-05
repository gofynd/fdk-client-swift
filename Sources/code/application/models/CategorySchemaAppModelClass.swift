

import Foundation
public extension ApplicationClient {
    /*
         Model: CategorySchema
         Used By: Lead
     */
    class CategorySchema: Codable {
        public var id: String?

        public var display: String?

        public var key: String?

        public var subCategories: CategorySchema?

        public var groupId: Double?

        public var feedbackForm: FeedbackForm?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case display

            case key

            case subCategories = "sub_categories"

            case groupId = "group_id"

            case feedbackForm = "feedback_form"
        }

        public init(display: String? = nil, feedbackForm: FeedbackForm? = nil, groupId: Double? = nil, key: String? = nil, subCategories: CategorySchema? = nil, id: String? = nil) {
            self.id = id

            self.display = display

            self.key = key

            self.subCategories = subCategories

            self.groupId = groupId

            self.feedbackForm = feedbackForm
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subCategories = try container.decode(CategorySchema.self, forKey: .subCategories)

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

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(subCategories, forKey: .subCategories)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(feedbackForm, forKey: .feedbackForm)
        }
    }
}
