

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetAffiliateResponse
         Used By: Finance
     */

    class GetAffiliateResponse: Codable {
        public var docs: [[String: Any]]?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case docs

            case success
        }

        public init(docs: [[String: Any]]? = nil, success: Bool? = nil) {
            self.docs = docs

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                docs = try container.decode([[String: Any]].self, forKey: .docs)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(docs, forKey: .docs)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
