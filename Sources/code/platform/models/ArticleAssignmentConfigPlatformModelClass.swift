

import Foundation
public extension PlatformClient {
    /*
         Model: ArticleAssignmentConfig
         Used By: Configuration
     */

    class ArticleAssignmentConfig: Codable {
        public var rules: ArticleAssignmentRules?

        public var postOrderReassignment: Bool?

        public enum CodingKeys: String, CodingKey {
            case rules

            case postOrderReassignment = "post_order_reassignment"
        }

        public init(postOrderReassignment: Bool? = nil, rules: ArticleAssignmentRules? = nil) {
            self.rules = rules

            self.postOrderReassignment = postOrderReassignment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                rules = try container.decode(ArticleAssignmentRules.self, forKey: .rules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                postOrderReassignment = try container.decode(Bool.self, forKey: .postOrderReassignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rules, forKey: .rules)

            try? container.encodeIfPresent(postOrderReassignment, forKey: .postOrderReassignment)
        }
    }
}
