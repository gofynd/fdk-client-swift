

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateConfig1
         Used By: Order
     */

    class AffiliateConfig1: Codable {
        public var forceReassignment: Bool

        public var description: String?

        public var name: String

        public var updatedAt: String?

        public var appCompanyId: Int

        public var dpAssignment: Bool

        public var stores: [Int]?

        public var articleAssignment: [String: Any]?

        public var postOrderReassignment: Bool

        public var createdAt: String?

        public var secret: String

        public var token: String?

        public var meta: [[String: Any]]?

        public var acId: String

        public var owner: String

        public enum CodingKeys: String, CodingKey {
            case forceReassignment = "force_reassignment"

            case description

            case name

            case updatedAt = "updated_at"

            case appCompanyId = "app_company_id"

            case dpAssignment = "dp_assignment"

            case stores

            case articleAssignment = "article_assignment"

            case postOrderReassignment = "post_order_reassignment"

            case createdAt = "created_at"

            case secret

            case token

            case meta

            case acId = "ac_id"

            case owner
        }

        public init(acId: String, appCompanyId: Int, articleAssignment: [String: Any]? = nil, createdAt: String? = nil, description: String? = nil, dpAssignment: Bool, forceReassignment: Bool, meta: [[String: Any]]? = nil, name: String, owner: String, postOrderReassignment: Bool, secret: String, stores: [Int]? = nil, token: String? = nil, updatedAt: String? = nil) {
            self.forceReassignment = forceReassignment

            self.description = description

            self.name = name

            self.updatedAt = updatedAt

            self.appCompanyId = appCompanyId

            self.dpAssignment = dpAssignment

            self.stores = stores

            self.articleAssignment = articleAssignment

            self.postOrderReassignment = postOrderReassignment

            self.createdAt = createdAt

            self.secret = secret

            self.token = token

            self.meta = meta

            self.acId = acId

            self.owner = owner
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            forceReassignment = try container.decode(Bool.self, forKey: .forceReassignment)

            do {
                description = try container.decode(String.self, forKey: .description)

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

            appCompanyId = try container.decode(Int.self, forKey: .appCompanyId)

            dpAssignment = try container.decode(Bool.self, forKey: .dpAssignment)

            do {
                stores = try container.decode([Int].self, forKey: .stores)

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

            postOrderReassignment = try container.decode(Bool.self, forKey: .postOrderReassignment)

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            secret = try container.decode(String.self, forKey: .secret)

            do {
                token = try container.decode(String.self, forKey: .token)

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

            acId = try container.decode(String.self, forKey: .acId)

            owner = try container.decode(String.self, forKey: .owner)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(forceReassignment, forKey: .forceReassignment)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(appCompanyId, forKey: .appCompanyId)

            try? container.encodeIfPresent(dpAssignment, forKey: .dpAssignment)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(postOrderReassignment, forKey: .postOrderReassignment)

            try? container.encode(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encode(token, forKey: .token)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(acId, forKey: .acId)

            try? container.encodeIfPresent(owner, forKey: .owner)
        }
    }
}
