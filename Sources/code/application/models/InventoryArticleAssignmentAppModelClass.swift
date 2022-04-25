

import Foundation
public extension ApplicationClient {
    /*
         Model: InventoryArticleAssignment
         Used By: Configuration
     */
    class InventoryArticleAssignment: Codable {
        public var postOrderReassignment: Bool?

        public var rules: ArticleAssignmentRule?

        public enum CodingKeys: String, CodingKey {
            case postOrderReassignment = "post_order_reassignment"

            case rules
        }

        public init(postOrderReassignment: Bool? = nil, rules: ArticleAssignmentRule? = nil) {
            self.postOrderReassignment = postOrderReassignment

            self.rules = rules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                postOrderReassignment = try container.decode(Bool.self, forKey: .postOrderReassignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rules = try container.decode(ArticleAssignmentRule.self, forKey: .rules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(postOrderReassignment, forKey: .postOrderReassignment)

            try? container.encodeIfPresent(rules, forKey: .rules)
        }
    }
}
