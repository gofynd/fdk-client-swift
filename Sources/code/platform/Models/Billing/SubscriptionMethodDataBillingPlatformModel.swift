

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: SubscriptionMethodData
        Used By: Billing
    */

    class SubscriptionMethodData: Codable {
        
        
        public var brand: String?
        
        public var checks: MethodChecks?
        
        public var country: String?
        
        public var expMonth: Double?
        
        public var expYear: Double?
        
        public var fingerprint: String?
        
        public var funding: String?
        
        public var generatedFrom: String?
        
        public var last4: String?
        
        public var networks: MethodNetworks?
        
        public var threeDSecureUsage: MethodSecureUsage?
        
        public var wallet: String?
        
        public var name: String?
        
        public var isDefault: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
            case checks = "checks"
            
            case country = "country"
            
            case expMonth = "exp_month"
            
            case expYear = "exp_year"
            
            case fingerprint = "fingerprint"
            
            case funding = "funding"
            
            case generatedFrom = "generated_from"
            
            case last4 = "last4"
            
            case networks = "networks"
            
            case threeDSecureUsage = "three_d_secure_usage"
            
            case wallet = "wallet"
            
            case name = "name"
            
            case isDefault = "is_default"
            
        }

        public init(brand: String? = nil, checks: MethodChecks? = nil, country: String? = nil, expMonth: Double? = nil, expYear: Double? = nil, fingerprint: String? = nil, funding: String? = nil, generatedFrom: String? = nil, isDefault: Bool? = nil, last4: String? = nil, name: String? = nil, networks: MethodNetworks? = nil, threeDSecureUsage: MethodSecureUsage? = nil, wallet: String? = nil) {
            
            self.brand = brand
            
            self.checks = checks
            
            self.country = country
            
            self.expMonth = expMonth
            
            self.expYear = expYear
            
            self.fingerprint = fingerprint
            
            self.funding = funding
            
            self.generatedFrom = generatedFrom
            
            self.last4 = last4
            
            self.networks = networks
            
            self.threeDSecureUsage = threeDSecureUsage
            
            self.wallet = wallet
            
            self.name = name
            
            self.isDefault = isDefault
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brand = try container.decode(String.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checks = try container.decode(MethodChecks.self, forKey: .checks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expMonth = try container.decode(Double.self, forKey: .expMonth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expYear = try container.decode(Double.self, forKey: .expYear)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fingerprint = try container.decode(String.self, forKey: .fingerprint)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    funding = try container.decode(String.self, forKey: .funding)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    generatedFrom = try container.decode(String.self, forKey: .generatedFrom)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    last4 = try container.decode(String.self, forKey: .last4)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    networks = try container.decode(MethodNetworks.self, forKey: .networks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    threeDSecureUsage = try container.decode(MethodSecureUsage.self, forKey: .threeDSecureUsage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    wallet = try container.decode(String.self, forKey: .wallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(checks, forKey: .checks)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(expMonth, forKey: .expMonth)
            
            
            
            
            try? container.encodeIfPresent(expYear, forKey: .expYear)
            
            
            
            
            try? container.encodeIfPresent(fingerprint, forKey: .fingerprint)
            
            
            
            
            try? container.encodeIfPresent(funding, forKey: .funding)
            
            
            
            
            try? container.encodeIfPresent(generatedFrom, forKey: .generatedFrom)
            
            
            
            
            try? container.encodeIfPresent(last4, forKey: .last4)
            
            
            
            
            try? container.encodeIfPresent(networks, forKey: .networks)
            
            
            
            
            try? container.encodeIfPresent(threeDSecureUsage, forKey: .threeDSecureUsage)
            
            
            
            
            try? container.encodeIfPresent(wallet, forKey: .wallet)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
        }
        
    }
}




