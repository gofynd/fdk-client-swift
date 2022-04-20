

import Foundation
public extension PlatformClient {
    /*
         Model: SubscriptionLimit
         Used By: Billing
     */

    class SubscriptionLimit: Codable {
        public var application: SubscriptionLimitApplication?

        public var marketplace: SubscriptionLimitMarketplace?

        public var otherPlatform: SubscriptionLimitOtherPlatform?

        public var team: SubscriptionLimitTeam?

        public var products: SubscriptionLimitProducts?

        public var extensions: SubscriptionLimitExtensions?

        public var integrations: SubscriptionLimitIntegrations?

        public var isTrialPlan: Bool?

        public enum CodingKeys: String, CodingKey {
            case application

            case marketplace

            case otherPlatform = "other_platform"

            case team

            case products

            case extensions

            case integrations

            case isTrialPlan = "is_trial_plan"
        }

        public init(application: SubscriptionLimitApplication? = nil, extensions: SubscriptionLimitExtensions? = nil, integrations: SubscriptionLimitIntegrations? = nil, isTrialPlan: Bool? = nil, marketplace: SubscriptionLimitMarketplace? = nil, otherPlatform: SubscriptionLimitOtherPlatform? = nil, products: SubscriptionLimitProducts? = nil, team: SubscriptionLimitTeam? = nil) {
            self.application = application

            self.marketplace = marketplace

            self.otherPlatform = otherPlatform

            self.team = team

            self.products = products

            self.extensions = extensions

            self.integrations = integrations

            self.isTrialPlan = isTrialPlan
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(SubscriptionLimitApplication.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplace = try container.decode(SubscriptionLimitMarketplace.self, forKey: .marketplace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                otherPlatform = try container.decode(SubscriptionLimitOtherPlatform.self, forKey: .otherPlatform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                team = try container.decode(SubscriptionLimitTeam.self, forKey: .team)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode(SubscriptionLimitProducts.self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extensions = try container.decode(SubscriptionLimitExtensions.self, forKey: .extensions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                integrations = try container.decode(SubscriptionLimitIntegrations.self, forKey: .integrations)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isTrialPlan = try container.decode(Bool.self, forKey: .isTrialPlan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(marketplace, forKey: .marketplace)

            try? container.encodeIfPresent(otherPlatform, forKey: .otherPlatform)

            try? container.encodeIfPresent(team, forKey: .team)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(extensions, forKey: .extensions)

            try? container.encodeIfPresent(integrations, forKey: .integrations)

            try? container.encodeIfPresent(isTrialPlan, forKey: .isTrialPlan)
        }
    }
}
