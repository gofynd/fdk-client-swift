

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateConfig1
         Used By: Order
     */

    class AffiliateConfig1: Codable {
        public var meta: [[String: Any]]?

        public var name: String

        public var updatedAt: String?

        public var owner: String

        public var dpAssignment: Bool

        public var createdAt: String?

        public var appCompanyId: Int

        public var token: String?

        public var description: String?

        public var forceReassignment: Bool

        public var stores: [Int]?

        public var secret: String

        public var acId: String

        public var articleAssignment: [String: Any]?

        public var postOrderReassignment: Bool

        public enum CodingKeys: String, CodingKey {
            case meta

            case name

            case updatedAt = "updated_at"

            case owner

            case dpAssignment = "dp_assignment"

            case createdAt = "created_at"

            case appCompanyId = "app_company_id"

            case token

            case description

            case forceReassignment = "force_reassignment"

            case stores

            case secret

            case acId = "ac_id"

            case articleAssignment = "article_assignment"

            case postOrderReassignment = "post_order_reassignment"
        }

        public init(acId: String, appCompanyId: Int, articleAssignment: [String: Any]? = nil, createdAt: String? = nil, description: String? = nil, dpAssignment: Bool, forceReassignment: Bool, meta: [[String: Any]]? = nil, name: String, owner: String, postOrderReassignment: Bool, secret: String, stores: [Int]? = nil, token: String? = nil, updatedAt: String? = nil) {
            self.meta = meta

            self.name = name

            self.updatedAt = updatedAt

            self.owner = owner

            self.dpAssignment = dpAssignment

            self.createdAt = createdAt

            self.appCompanyId = appCompanyId

            self.token = token

            self.description = description

            self.forceReassignment = forceReassignment

            self.stores = stores

            self.secret = secret

            self.acId = acId

            self.articleAssignment = articleAssignment

            self.postOrderReassignment = postOrderReassignment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([[String: Any]].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            owner = try container.decode(String.self, forKey: .owner)

            dpAssignment = try container.decode(Bool.self, forKey: .dpAssignment)

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appCompanyId = try container.decode(Int.self, forKey: .appCompanyId)

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            forceReassignment = try container.decode(Bool.self, forKey: .forceReassignment)

            do {
                stores = try container.decode([Int].self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            secret = try container.decode(String.self, forKey: .secret)

            acId = try container.decode(String.self, forKey: .acId)

            do {
                articleAssignment = try container.decode([String: Any].self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            postOrderReassignment = try container.decode(Bool.self, forKey: .postOrderReassignment)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(dpAssignment, forKey: .dpAssignment)

            try? container.encode(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(appCompanyId, forKey: .appCompanyId)

            try? container.encode(token, forKey: .token)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(forceReassignment, forKey: .forceReassignment)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(acId, forKey: .acId)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(postOrderReassignment, forKey: .postOrderReassignment)
        }
    }
}
