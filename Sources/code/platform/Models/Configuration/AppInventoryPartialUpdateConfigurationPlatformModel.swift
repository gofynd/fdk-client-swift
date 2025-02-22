

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: AppInventoryPartialUpdate
        Used By: Configuration
    */

    class AppInventoryPartialUpdate: Codable {
        
        
        public var search: SearchConfig?
        
        public var rewardPoints: RewardPointsConfig?
        
        public var cart: AppCartConfig?
        
        public var payment: AppPaymentConfig?
        
        public var loyaltyPoints: LoyaltyPointsConfig?
        
        public var commsEnabled: Bool?
        
        public var communication: CommunicationConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case search = "search"
            
            case rewardPoints = "reward_points"
            
            case cart = "cart"
            
            case payment = "payment"
            
            case loyaltyPoints = "loyalty_points"
            
            case commsEnabled = "comms_enabled"
            
            case communication = "communication"
            
        }

        public init(cart: AppCartConfig? = nil, commsEnabled: Bool? = nil, communication: CommunicationConfig? = nil, loyaltyPoints: LoyaltyPointsConfig? = nil, payment: AppPaymentConfig? = nil, rewardPoints: RewardPointsConfig? = nil, search: SearchConfig? = nil) {
            
            self.search = search
            
            self.rewardPoints = rewardPoints
            
            self.cart = cart
            
            self.payment = payment
            
            self.loyaltyPoints = loyaltyPoints
            
            self.commsEnabled = commsEnabled
            
            self.communication = communication
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    search = try container.decode(SearchConfig.self, forKey: .search)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rewardPoints = try container.decode(RewardPointsConfig.self, forKey: .rewardPoints)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cart = try container.decode(AppCartConfig.self, forKey: .cart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payment = try container.decode(AppPaymentConfig.self, forKey: .payment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loyaltyPoints = try container.decode(LoyaltyPointsConfig.self, forKey: .loyaltyPoints)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    commsEnabled = try container.decode(Bool.self, forKey: .commsEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    communication = try container.decode(CommunicationConfig.self, forKey: .communication)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(search, forKey: .search)
            
            
            
            
            try? container.encodeIfPresent(rewardPoints, forKey: .rewardPoints)
            
            
            
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
            
            
            
            
            try? container.encodeIfPresent(commsEnabled, forKey: .commsEnabled)
            
            
            
            
            try? container.encodeIfPresent(communication, forKey: .communication)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: AppInventoryPartialUpdate
        Used By: Configuration
    */

    class AppInventoryPartialUpdate: Codable {
        
        
        public var search: SearchConfig?
        
        public var rewardPoints: RewardPointsConfig?
        
        public var cart: AppCartConfig?
        
        public var payment: AppPaymentConfig?
        
        public var loyaltyPoints: LoyaltyPointsConfig?
        
        public var commsEnabled: Bool?
        
        public var communication: CommunicationConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case search = "search"
            
            case rewardPoints = "reward_points"
            
            case cart = "cart"
            
            case payment = "payment"
            
            case loyaltyPoints = "loyalty_points"
            
            case commsEnabled = "comms_enabled"
            
            case communication = "communication"
            
        }

        public init(cart: AppCartConfig? = nil, commsEnabled: Bool? = nil, communication: CommunicationConfig? = nil, loyaltyPoints: LoyaltyPointsConfig? = nil, payment: AppPaymentConfig? = nil, rewardPoints: RewardPointsConfig? = nil, search: SearchConfig? = nil) {
            
            self.search = search
            
            self.rewardPoints = rewardPoints
            
            self.cart = cart
            
            self.payment = payment
            
            self.loyaltyPoints = loyaltyPoints
            
            self.commsEnabled = commsEnabled
            
            self.communication = communication
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    search = try container.decode(SearchConfig.self, forKey: .search)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rewardPoints = try container.decode(RewardPointsConfig.self, forKey: .rewardPoints)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cart = try container.decode(AppCartConfig.self, forKey: .cart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payment = try container.decode(AppPaymentConfig.self, forKey: .payment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loyaltyPoints = try container.decode(LoyaltyPointsConfig.self, forKey: .loyaltyPoints)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    commsEnabled = try container.decode(Bool.self, forKey: .commsEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    communication = try container.decode(CommunicationConfig.self, forKey: .communication)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(search, forKey: .search)
            
            
            
            
            try? container.encodeIfPresent(rewardPoints, forKey: .rewardPoints)
            
            
            
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
            
            
            
            
            try? container.encodeIfPresent(commsEnabled, forKey: .commsEnabled)
            
            
            
            
            try? container.encodeIfPresent(communication, forKey: .communication)
            
            
        }
        
    }
}


