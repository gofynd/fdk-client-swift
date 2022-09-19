

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateConfig1
         Used By: Order
     */

    class AffiliateConfig1: Codable {
        public var owner: String

        public var updatedAt: String?

        public var appCompanyId: Int

        public var forceReassignment: Bool

        public var name: String

        public var postOrderReassignment: Bool

        public var acId: String

        public var secret: String

        public var stores: [Int]?

        public var dpAssignment: Bool

        public var description: String?

        public var meta: [[String: Any]]?

        public var articleAssignment: [String: Any]?

        public var token: String?

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case owner

            case updatedAt = "updated_at"

            case appCompanyId = "app_company_id"

            case forceReassignment = "force_reassignment"

            case name

            case postOrderReassignment = "post_order_reassignment"

            case acId = "ac_id"

            case secret

            case stores

            case dpAssignment = "dp_assignment"

            case description

            case meta

            case articleAssignment = "article_assignment"

            case token

            case createdAt = "created_at"
        }

        public init(acId: String, appCompanyId: Int, articleAssignment: [String: Any]? = nil, createdAt: String? = nil, description: String? = nil, dpAssignment: Bool, forceReassignment: Bool, meta: [[String: Any]]? = nil, name: String, owner: String, postOrderReassignment: Bool, secret: String, stores: [Int]? = nil, token: String? = nil, updatedAt: String? = nil) {
            self.owner = owner

            self.updatedAt = updatedAt

            self.appCompanyId = appCompanyId

            self.forceReassignment = forceReassignment

            self.name = name

            self.postOrderReassignment = postOrderReassignment

            self.acId = acId

            self.secret = secret

            self.stores = stores

            self.dpAssignment = dpAssignment

            self.description = description

            self.meta = meta

            self.articleAssignment = articleAssignment

            self.token = token

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            owner = try container.decode(String.self, forKey: .owner)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appCompanyId = try container.decode(Int.self, forKey: .appCompanyId)

            forceReassignment = try container.decode(Bool.self, forKey: .forceReassignment)

            name = try container.decode(String.self, forKey: .name)

            postOrderReassignment = try container.decode(Bool.self, forKey: .postOrderReassignment)

            acId = try container.decode(String.self, forKey: .acId)

            secret = try container.decode(String.self, forKey: .secret)

            do {
                stores = try container.decode([Int].self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpAssignment = try container.decode(Bool.self, forKey: .dpAssignment)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([[String: Any]].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode([String: Any].self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(appCompanyId, forKey: .appCompanyId)

            try? container.encodeIfPresent(forceReassignment, forKey: .forceReassignment)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(postOrderReassignment, forKey: .postOrderReassignment)

            try? container.encodeIfPresent(acId, forKey: .acId)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(dpAssignment, forKey: .dpAssignment)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encode(token, forKey: .token)

            try? container.encode(createdAt, forKey: .createdAt)
        }
    }
}
