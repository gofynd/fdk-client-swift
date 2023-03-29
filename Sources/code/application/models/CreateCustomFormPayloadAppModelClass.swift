

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateCustomFormPayload
         Used By: Lead
     */
    class CreateCustomFormPayload: Codable {
        public var slug: String

        public var title: String

        public var inputs: [[String: Any]]

        public var description: String?

        public var headerImage: String?

        public var priority: PriorityEnum

        public var shouldNotify: Bool?

        public var successMessage: String?

        public var pollForAssignment: PollForAssignment?

        public enum CodingKeys: String, CodingKey {
            case slug

            case title

            case inputs

            case description

            case headerImage = "header_image"

            case priority

            case shouldNotify = "should_notify"

            case successMessage = "success_message"

            case pollForAssignment = "poll_for_assignment"
        }

        public init(description: String? = nil, headerImage: String? = nil, inputs: [[String: Any]], pollForAssignment: PollForAssignment? = nil, priority: PriorityEnum, shouldNotify: Bool? = nil, slug: String, successMessage: String? = nil, title: String) {
            self.slug = slug

            self.title = title

            self.inputs = inputs

            self.description = description

            self.headerImage = headerImage

            self.priority = priority

            self.shouldNotify = shouldNotify

            self.successMessage = successMessage

            self.pollForAssignment = pollForAssignment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            title = try container.decode(String.self, forKey: .title)

            inputs = try container.decode([[String: Any]].self, forKey: .inputs)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerImage = try container.decode(String.self, forKey: .headerImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(PriorityEnum.self, forKey: .priority)

            do {
                shouldNotify = try container.decode(Bool.self, forKey: .shouldNotify)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                successMessage = try container.decode(String.self, forKey: .successMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pollForAssignment = try container.decode(PollForAssignment.self, forKey: .pollForAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(inputs, forKey: .inputs)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(headerImage, forKey: .headerImage)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)

            try? container.encodeIfPresent(successMessage, forKey: .successMessage)

            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
        }
    }
}
