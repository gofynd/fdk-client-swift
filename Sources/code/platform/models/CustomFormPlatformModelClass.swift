

import Foundation
public extension PlatformClient {
    /*
         Model: CustomForm
         Used By: Lead
     */

    class CustomForm: Codable {
        public var applicationId: String

        public var slug: String

        public var headerImage: String?

        public var title: String

        public var description: String?

        public var priority: Priority

        public var loginRequired: Bool

        public var shouldNotify: Bool

        public var successMessage: String?

        public var submitButton: SubmitButton?

        public var inputs: [[String: Any]]

        public var createdOn: CreatedOn?

        public var pollForAssignment: PollForAssignment?

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case applicationId = "application_id"

            case slug

            case headerImage = "header_image"

            case title

            case description

            case priority

            case loginRequired = "login_required"

            case shouldNotify = "should_notify"

            case successMessage = "success_message"

            case submitButton = "submit_button"

            case inputs

            case createdOn = "created_on"

            case pollForAssignment = "poll_for_assignment"

            case id = "_id"
        }

        public init(applicationId: String, createdOn: CreatedOn? = nil, description: String? = nil, headerImage: String? = nil, inputs: [[String: Any]], loginRequired: Bool, pollForAssignment: PollForAssignment? = nil, priority: Priority, shouldNotify: Bool, slug: String, submitButton: SubmitButton? = nil, successMessage: String? = nil, title: String, id: String) {
            self.applicationId = applicationId

            self.slug = slug

            self.headerImage = headerImage

            self.title = title

            self.description = description

            self.priority = priority

            self.loginRequired = loginRequired

            self.shouldNotify = shouldNotify

            self.successMessage = successMessage

            self.submitButton = submitButton

            self.inputs = inputs

            self.createdOn = createdOn

            self.pollForAssignment = pollForAssignment

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                headerImage = try container.decode(String.self, forKey: .headerImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Priority.self, forKey: .priority)

            loginRequired = try container.decode(Bool.self, forKey: .loginRequired)

            shouldNotify = try container.decode(Bool.self, forKey: .shouldNotify)

            do {
                successMessage = try container.decode(String.self, forKey: .successMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                submitButton = try container.decode(SubmitButton.self, forKey: .submitButton)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            inputs = try container.decode([[String: Any]].self, forKey: .inputs)

            do {
                createdOn = try container.decode(CreatedOn.self, forKey: .createdOn)

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

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(headerImage, forKey: .headerImage)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(loginRequired, forKey: .loginRequired)

            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)

            try? container.encodeIfPresent(successMessage, forKey: .successMessage)

            try? container.encodeIfPresent(submitButton, forKey: .submitButton)

            try? container.encodeIfPresent(inputs, forKey: .inputs)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
