

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateConfig1
         Used By: Order
     */

    class AffiliateConfig1: Codable {
        public var description: String?

        public var owner: String

        public var appCompanyId: Int

        public var meta: [[String: Any]]?

        public var updatedAt: String?

        public var articleAssignment: [String: Any]?

        public var dpAssignment: Bool

        public var name: String

        public var stores: [Int]?

        public var secret: String

        public var forceReassignment: Bool

        public var createdAt: String?

        public var postOrderReassignment: Bool

        public var token: String?

        public var acId: String

        public enum CodingKeys: String, CodingKey {
            case description

            case owner

            case appCompanyId = "app_company_id"

            case meta

            case updatedAt = "updated_at"

            case articleAssignment = "article_assignment"

            case dpAssignment = "dp_assignment"

            case name

            case stores

            case secret

            case forceReassignment = "force_reassignment"

            case createdAt = "created_at"

            case postOrderReassignment = "post_order_reassignment"

            case token

            case acId = "ac_id"
        }

        public init(acId: String, appCompanyId: Int, articleAssignment: [String: Any]? = nil, createdAt: String? = nil, description: String? = nil, dpAssignment: Bool, forceReassignment: Bool, meta: [[String: Any]]? = nil, name: String, owner: String, postOrderReassignment: Bool, secret: String, stores: [Int]? = nil, token: String? = nil, updatedAt: String? = nil) {
            self.description = description

            self.owner = owner

            self.appCompanyId = appCompanyId

            self.meta = meta

            self.updatedAt = updatedAt

            self.articleAssignment = articleAssignment

            self.dpAssignment = dpAssignment

            self.name = name

            self.stores = stores

            self.secret = secret

            self.forceReassignment = forceReassignment

            self.createdAt = createdAt

            self.postOrderReassignment = postOrderReassignment

            self.token = token

            self.acId = acId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            owner = try container.decode(String.self, forKey: .owner)

            appCompanyId = try container.decode(Int.self, forKey: .appCompanyId)

            do {
                meta = try container.decode([[String: Any]].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            dpAssignment = try container.decode(Bool.self, forKey: .dpAssignment)

            name = try container.decode(String.self, forKey: .name)

            do {
                stores = try container.decode([Int].self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            secret = try container.decode(String.self, forKey: .secret)

            forceReassignment = try container.decode(Bool.self, forKey: .forceReassignment)

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            postOrderReassignment = try container.decode(Bool.self, forKey: .postOrderReassignment)

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            acId = try container.decode(String.self, forKey: .acId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(appCompanyId, forKey: .appCompanyId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(dpAssignment, forKey: .dpAssignment)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(forceReassignment, forKey: .forceReassignment)

            try? container.encode(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(postOrderReassignment, forKey: .postOrderReassignment)

            try? container.encode(token, forKey: .token)

            try? container.encodeIfPresent(acId, forKey: .acId)
        }
    }
}
