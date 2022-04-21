

import Foundation
public extension PlatformClient {
    /*
         Model: InvoiceDetailsPaymentMethodsData
         Used By: Billing
     */

    class InvoiceDetailsPaymentMethodsData: Codable {
        public var brand: String?

        public var last4: String?

        public var checks: InvoiceDetailsPaymentMethodsDataChecks?

        public var wallet: String?

        public var country: String?

        public var funding: String?

        public var expYear: Int?

        public var networks: InvoiceDetailsPaymentMethodsDataNetworks?

        public var expMonth: Int?

        public var fingerprint: String?

        public var generatedFrom: String?

        public var threeDSecureUsage: InvoiceDetailsPaymentMethodsDataThreeDSecureUsage?

        public enum CodingKeys: String, CodingKey {
            case brand

            case last4

            case checks

            case wallet

            case country

            case funding

            case expYear = "exp_year"

            case networks

            case expMonth = "exp_month"

            case fingerprint

            case generatedFrom = "generated_from"

            case threeDSecureUsage = "three_d_secure_usage"
        }

        public init(brand: String? = nil, checks: InvoiceDetailsPaymentMethodsDataChecks? = nil, country: String? = nil, expMonth: Int? = nil, expYear: Int? = nil, fingerprint: String? = nil, funding: String? = nil, generatedFrom: String? = nil, last4: String? = nil, networks: InvoiceDetailsPaymentMethodsDataNetworks? = nil, threeDSecureUsage: InvoiceDetailsPaymentMethodsDataThreeDSecureUsage? = nil, wallet: String? = nil) {
            self.brand = brand

            self.last4 = last4

            self.checks = checks

            self.wallet = wallet

            self.country = country

            self.funding = funding

            self.expYear = expYear

            self.networks = networks

            self.expMonth = expMonth

            self.fingerprint = fingerprint

            self.generatedFrom = generatedFrom

            self.threeDSecureUsage = threeDSecureUsage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brand = try container.decode(String.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                last4 = try container.decode(String.self, forKey: .last4)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checks = try container.decode(InvoiceDetailsPaymentMethodsDataChecks.self, forKey: .checks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                funding = try container.decode(String.self, forKey: .funding)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expYear = try container.decode(Int.self, forKey: .expYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                networks = try container.decode(InvoiceDetailsPaymentMethodsDataNetworks.self, forKey: .networks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expMonth = try container.decode(Int.self, forKey: .expMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fingerprint = try container.decode(String.self, forKey: .fingerprint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                generatedFrom = try container.decode(String.self, forKey: .generatedFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                threeDSecureUsage = try container.decode(InvoiceDetailsPaymentMethodsDataThreeDSecureUsage.self, forKey: .threeDSecureUsage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(last4, forKey: .last4)

            try? container.encodeIfPresent(checks, forKey: .checks)

            try? container.encodeIfPresent(wallet, forKey: .wallet)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(funding, forKey: .funding)

            try? container.encodeIfPresent(expYear, forKey: .expYear)

            try? container.encodeIfPresent(networks, forKey: .networks)

            try? container.encodeIfPresent(expMonth, forKey: .expMonth)

            try? container.encodeIfPresent(fingerprint, forKey: .fingerprint)

            try? container.encodeIfPresent(generatedFrom, forKey: .generatedFrom)

            try? container.encodeIfPresent(threeDSecureUsage, forKey: .threeDSecureUsage)
        }
    }
}
