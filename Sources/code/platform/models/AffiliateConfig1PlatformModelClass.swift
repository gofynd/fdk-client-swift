

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateConfig1
         Used By: Order
     */

    class AffiliateConfig1: Codable {
        public var appCompanyId: Int

        public var token: String?

        public var secret: String

        public var postOrderReassignment: Bool

        public var name: String

        public var owner: String

        public var updatedAt: String?

        public var articleAssignment: [String: Any]?

        public var description: String?

        public var dpAssignment: Bool

        public var forceReassignment: Bool

        public var stores: [Int]?

        public var meta: [[String: Any]]?

        public var createdAt: String?

        public var acId: String

        public enum CodingKeys: String, CodingKey {
            case appCompanyId = "app_company_id"

            case token

            case secret

            case postOrderReassignment = "post_order_reassignment"

            case name

            case owner

            case updatedAt = "updated_at"

            case articleAssignment = "article_assignment"

            case description

            case dpAssignment = "dp_assignment"

            case forceReassignment = "force_reassignment"

            case stores

            case meta

            case createdAt = "created_at"

            case acId = "ac_id"
        }

        public init(acId: String, appCompanyId: Int, articleAssignment: [String: Any]? = nil, createdAt: String? = nil, description: String? = nil, dpAssignment: Bool, forceReassignment: Bool, meta: [[String: Any]]? = nil, name: String, owner: String, postOrderReassignment: Bool, secret: String, stores: [Int]? = nil, token: String? = nil, updatedAt: String? = nil) {
            self.appCompanyId = appCompanyId

            self.token = token

            self.secret = secret

            self.postOrderReassignment = postOrderReassignment

            self.name = name

            self.owner = owner

            self.updatedAt = updatedAt

            self.articleAssignment = articleAssignment

            self.description = description

            self.dpAssignment = dpAssignment

            self.forceReassignment = forceReassignment

            self.stores = stores

            self.meta = meta

            self.createdAt = createdAt

            self.acId = acId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            appCompanyId = try container.decode(Int.self, forKey: .appCompanyId)

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            secret = try container.decode(String.self, forKey: .secret)

            postOrderReassignment = try container.decode(Bool.self, forKey: .postOrderReassignment)

            name = try container.decode(String.self, forKey: .name)

            owner = try container.decode(String.self, forKey: .owner)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpAssignment = try container.decode(Bool.self, forKey: .dpAssignment)

            forceReassignment = try container.decode(Bool.self, forKey: .forceReassignment)

            do {
                stores = try container.decode([Int].self, forKey: .stores)

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
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            acId = try container.decode(String.self, forKey: .acId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appCompanyId, forKey: .appCompanyId)

            try? container.encode(token, forKey: .token)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(postOrderReassignment, forKey: .postOrderReassignment)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(dpAssignment, forKey: .dpAssignment)

            try? container.encodeIfPresent(forceReassignment, forKey: .forceReassignment)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(acId, forKey: .acId)
        }
    }
}
