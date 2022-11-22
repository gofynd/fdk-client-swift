

import Foundation
public extension PlatformClient {
    /*
         Model: JioCodeUpsertResponse
         Used By: Order
     */

    class JioCodeUpsertResponse: Codable {
        public var error: [NestedErrorSchemaDataSet]?

        public var identifier: String?

        public var success: Bool?

        public var traceId: String?

        public var data: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case error

            case identifier

            case success

            case traceId = "trace_id"

            case data
        }

        public init(data: [[String: Any]]? = nil, error: [NestedErrorSchemaDataSet]? = nil, identifier: String? = nil, success: Bool? = nil, traceId: String? = nil) {
            self.error = error

            self.identifier = identifier

            self.success = success

            self.traceId = traceId

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                error = try container.decode([NestedErrorSchemaDataSet].self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([[String: Any]].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
