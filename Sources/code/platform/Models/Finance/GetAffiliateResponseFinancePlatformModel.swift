

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetAffiliateResponse
         Used By: Finance
     */

    class GetAffiliateResponse: Codable {
        public var success: Bool?

        public var docs: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case success

            case docs
        }

        public init(docs: [[String: Any]]? = nil, success: Bool? = nil) {
            self.success = success

            self.docs = docs
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                docs = try container.decode([[String: Any]].self, forKey: .docs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(docs, forKey: .docs)
        }
    }
}
