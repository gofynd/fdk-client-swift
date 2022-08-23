

import Foundation
public extension PlatformClient {
    /*
         Model: Activity
         Used By: Feedback
     */

    class Activity: Codable {
        public var currentState: [String: Any]?

        public var documentId: String?

        public var previousState: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case currentState = "current_state"

            case documentId = "document_id"

            case previousState = "previous_state"
        }

        public init(currentState: [String: Any]? = nil, documentId: String? = nil, previousState: [String: Any]? = nil) {
            self.currentState = currentState

            self.documentId = documentId

            self.previousState = previousState
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currentState = try container.decode([String: Any].self, forKey: .currentState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documentId = try container.decode(String.self, forKey: .documentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                previousState = try container.decode([String: Any].self, forKey: .previousState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentState, forKey: .currentState)

            try? container.encodeIfPresent(documentId, forKey: .documentId)

            try? container.encodeIfPresent(previousState, forKey: .previousState)
        }
    }
}
