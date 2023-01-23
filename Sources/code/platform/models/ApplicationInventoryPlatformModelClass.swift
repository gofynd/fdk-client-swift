

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationInventory
         Used By: Configuration
     */

    class ApplicationInventory: Codable {
        public var inventory: AppInventoryConfig?

        public var authentication: AuthenticationConfig?

        public var articleAssignment: ArticleAssignmentConfig?

        public var rewardPoints: RewardPointsConfig?

        public var cart: AppCartConfig?

        public var payment: AppPaymentConfig?

        public var order: AppOrderConfig?

        public var logistics: AppLogisticsConfig?

        public var business: String?

        public var commsEnabled: Bool?

        public var platforms: [String]?

        public var id: String?

        public var loyaltyPoints: LoyaltyPointsConfig?

        public var app: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var modifiedBy: String?

        public enum CodingKeys: String, CodingKey {
            case inventory

            case authentication

            case articleAssignment = "article_assignment"

            case rewardPoints = "reward_points"

            case cart

            case payment

            case order

            case logistics

            case business

            case commsEnabled = "comms_enabled"

            case platforms

            case id = "_id"

            case loyaltyPoints = "loyalty_points"

            case app

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case modifiedBy = "modified_by"
        }

        public init(app: String? = nil, articleAssignment: ArticleAssignmentConfig? = nil, authentication: AuthenticationConfig? = nil, business: String? = nil, cart: AppCartConfig? = nil, commsEnabled: Bool? = nil, createdAt: String? = nil, inventory: AppInventoryConfig? = nil, logistics: AppLogisticsConfig? = nil, loyaltyPoints: LoyaltyPointsConfig? = nil, modifiedBy: String? = nil, order: AppOrderConfig? = nil, payment: AppPaymentConfig? = nil, platforms: [String]? = nil, rewardPoints: RewardPointsConfig? = nil, updatedAt: String? = nil, id: String? = nil) {
            self.inventory = inventory

            self.authentication = authentication

            self.articleAssignment = articleAssignment

            self.rewardPoints = rewardPoints

            self.cart = cart

            self.payment = payment

            self.order = order

            self.logistics = logistics

            self.business = business

            self.commsEnabled = commsEnabled

            self.platforms = platforms

            self.id = id

            self.loyaltyPoints = loyaltyPoints

            self.app = app

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                inventory = try container.decode(AppInventoryConfig.self, forKey: .inventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                authentication = try container.decode(AuthenticationConfig.self, forKey: .authentication)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode(ArticleAssignmentConfig.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rewardPoints = try container.decode(RewardPointsConfig.self, forKey: .rewardPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cart = try container.decode(AppCartConfig.self, forKey: .cart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payment = try container.decode(AppPaymentConfig.self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                order = try container.decode(AppOrderConfig.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logistics = try container.decode(AppLogisticsConfig.self, forKey: .logistics)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                business = try container.decode(String.self, forKey: .business)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                commsEnabled = try container.decode(Bool.self, forKey: .commsEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platforms = try container.decode([String].self, forKey: .platforms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loyaltyPoints = try container.decode(LoyaltyPointsConfig.self, forKey: .loyaltyPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                app = try container.decode(String.self, forKey: .app)

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

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(inventory, forKey: .inventory)

            try? container.encodeIfPresent(authentication, forKey: .authentication)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(rewardPoints, forKey: .rewardPoints)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(logistics, forKey: .logistics)

            try? container.encodeIfPresent(business, forKey: .business)

            try? container.encodeIfPresent(commsEnabled, forKey: .commsEnabled)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        }
    }
}
