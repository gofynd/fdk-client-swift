

import Foundation
public extension ApplicationClient.Communication {
    /*
         Model: GenericDelete
         Used By: Communication
     */
    class GenericDelete: Codable {
        public var message: String?

        public var acknowledged: Bool?

        public var affected: Int?

        public var operation: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case acknowledged

            case affected

            case operation
        }

        public init(acknowledged: Bool? = nil, affected: Int? = nil, message: String? = nil, operation: String? = nil) {
            self.message = message

            self.acknowledged = acknowledged

            self.affected = affected

            self.operation = operation
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                acknowledged = try container.decode(Bool.self, forKey: .acknowledged)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affected = try container.decode(Int.self, forKey: .affected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                operation = try container.decode(String.self, forKey: .operation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(acknowledged, forKey: .acknowledged)

            try? container.encodeIfPresent(affected, forKey: .affected)

            try? container.encodeIfPresent(operation, forKey: .operation)
        }
    }
}
