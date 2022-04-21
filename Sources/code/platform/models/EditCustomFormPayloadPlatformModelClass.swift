

import Foundation
public extension PlatformClient {
    /*
         Model: EditCustomFormPayload
         Used By: Lead
     */

    class EditCustomFormPayload: Codable {
        public var title: String

        public var inputs: [[String: Any]]

        public var description: String?

        public var priority: PriorityEnum

        public var headerImage: String?

        public var shouldNotify: Bool?

        public var loginRequired: Bool?

        public var successMessage: String?

        public var pollForAssignment: PollForAssignment?

        public enum CodingKeys: String, CodingKey {
            case title

            case inputs

            case description

            case priority

            case headerImage = "header_image"

            case shouldNotify = "should_notify"

            case loginRequired = "login_required"

            case successMessage = "success_message"

            case pollForAssignment = "poll_for_assignment"
        }

        public init(description: String? = nil, headerImage: String? = nil, inputs: [[String: Any]], loginRequired: Bool? = nil, pollForAssignment: PollForAssignment? = nil, priority: PriorityEnum, shouldNotify: Bool? = nil, successMessage: String? = nil, title: String) {
            self.title = title

            self.inputs = inputs

            self.description = description

            self.priority = priority

            self.headerImage = headerImage

            self.shouldNotify = shouldNotify

            self.loginRequired = loginRequired

            self.successMessage = successMessage

            self.pollForAssignment = pollForAssignment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            inputs = try container.decode([[String: Any]].self, forKey: .inputs)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(PriorityEnum.self, forKey: .priority)

            do {
                headerImage = try container.decode(String.self, forKey: .headerImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shouldNotify = try container.decode(Bool.self, forKey: .shouldNotify)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loginRequired = try container.decode(Bool.self, forKey: .loginRequired)

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

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(inputs, forKey: .inputs)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(headerImage, forKey: .headerImage)

            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)

            try? container.encodeIfPresent(loginRequired, forKey: .loginRequired)

            try? container.encodeIfPresent(successMessage, forKey: .successMessage)

            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
        }
    }
}
