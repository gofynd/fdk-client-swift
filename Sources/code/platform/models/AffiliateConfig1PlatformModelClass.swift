

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateConfig1
         Used By: Order
     */

    class AffiliateConfig1: Codable {
        public var createdAt: String?

        public var description: String?

        public var meta: [[String: Any]]?

        public var postOrderReassignment: Bool

        public var stores: [Int]?

        public var secret: String

        public var name: String

        public var dpAssignment: Bool

        public var acId: String

        public var updatedAt: String?

        public var owner: String

        public var forceReassignment: Bool

        public var appCompanyId: Int

        public var token: String?

        public var articleAssignment: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case description

            case meta

            case postOrderReassignment = "post_order_reassignment"

            case stores

            case secret

            case name

            case dpAssignment = "dp_assignment"

            case acId = "ac_id"

            case updatedAt = "updated_at"

            case owner

            case forceReassignment = "force_reassignment"

            case appCompanyId = "app_company_id"

            case token

            case articleAssignment = "article_assignment"
        }

        public init(acId: String, appCompanyId: Int, articleAssignment: [String: Any]? = nil, createdAt: String? = nil, description: String? = nil, dpAssignment: Bool, forceReassignment: Bool, meta: [[String: Any]]? = nil, name: String, owner: String, postOrderReassignment: Bool, secret: String, stores: [Int]? = nil, token: String? = nil, updatedAt: String? = nil) {
            self.createdAt = createdAt

            self.description = description

            self.meta = meta

            self.postOrderReassignment = postOrderReassignment

            self.stores = stores

            self.secret = secret

            self.name = name

            self.dpAssignment = dpAssignment

            self.acId = acId

            self.updatedAt = updatedAt

            self.owner = owner

            self.forceReassignment = forceReassignment

            self.appCompanyId = appCompanyId

            self.token = token

            self.articleAssignment = articleAssignment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

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

            do {
                meta = try container.decode([[String: Any]].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            postOrderReassignment = try container.decode(Bool.self, forKey: .postOrderReassignment)

            do {
                stores = try container.decode([Int].self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            secret = try container.decode(String.self, forKey: .secret)

            name = try container.decode(String.self, forKey: .name)

            dpAssignment = try container.decode(Bool.self, forKey: .dpAssignment)

            acId = try container.decode(String.self, forKey: .acId)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            owner = try container.decode(String.self, forKey: .owner)

            forceReassignment = try container.decode(Bool.self, forKey: .forceReassignment)

            appCompanyId = try container.decode(Int.self, forKey: .appCompanyId)

            do {
                token = try container.decode(String.self, forKey: .token)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(postOrderReassignment, forKey: .postOrderReassignment)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(dpAssignment, forKey: .dpAssignment)

            try? container.encodeIfPresent(acId, forKey: .acId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(forceReassignment, forKey: .forceReassignment)

            try? container.encodeIfPresent(appCompanyId, forKey: .appCompanyId)

            try? container.encode(token, forKey: .token)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        }
    }
}
