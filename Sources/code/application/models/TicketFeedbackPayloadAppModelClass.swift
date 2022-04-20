

import Foundation
public extension ApplicationClient {
    /*
         Model: TicketFeedbackPayload
         Used By: Lead
     */
    class TicketFeedbackPayload: Codable {
        public var formResponse: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case formResponse = "form_response"
        }

        public init(formResponse: [String: Any]? = nil) {
            self.formResponse = formResponse
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                formResponse = try container.decode([String: Any].self, forKey: .formResponse)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(formResponse, forKey: .formResponse)
        }
    }
}
