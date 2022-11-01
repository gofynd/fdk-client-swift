

import Foundation
public extension ApplicationClient {
    /*
         Model: CustomFormSubmissionPayload
         Used By: Lead
     */
    class CustomFormSubmissionPayload: Codable {
        public var response: [[String: Any]]

        public var attachments: [TicketAsset]?

        public enum CodingKeys: String, CodingKey {
            case response

            case attachments
        }

        public init(attachments: [TicketAsset]? = nil, response: [[String: Any]]) {
            self.response = response

            self.attachments = attachments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            response = try container.decode([[String: Any]].self, forKey: .response)

            do {
                attachments = try container.decode([TicketAsset].self, forKey: .attachments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(response, forKey: .response)

            try? container.encodeIfPresent(attachments, forKey: .attachments)
        }
    }
}
