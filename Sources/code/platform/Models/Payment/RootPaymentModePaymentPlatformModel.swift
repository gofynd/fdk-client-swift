

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RootPaymentMode
        Used By: Payment
    */

    class RootPaymentMode: Codable {
        
        
        public var list: [PaymentModeList]?
        
        public var displayPriority: Int
        
        public var addCardEnabled: Bool?
        
        public var saveCard: Bool?
        
        public var isPayByCardPl: Bool?
        
        public var displayName: String
        
        public var anonymousEnable: Bool?
        
        public var name: String
        
        public var aggregatorName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case list = "list"
            
            case displayPriority = "display_priority"
            
            case addCardEnabled = "add_card_enabled"
            
            case saveCard = "save_card"
            
            case isPayByCardPl = "is_pay_by_card_pl"
            
            case displayName = "display_name"
            
            case anonymousEnable = "anonymous_enable"
            
            case name = "name"
            
            case aggregatorName = "aggregator_name"
            
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, isPayByCardPl: Bool? = nil, list: [PaymentModeList]? = nil, name: String, saveCard: Bool? = nil) {
            
            self.list = list
            
            self.displayPriority = displayPriority
            
            self.addCardEnabled = addCardEnabled
            
            self.saveCard = saveCard
            
            self.isPayByCardPl = isPayByCardPl
            
            self.displayName = displayName
            
            self.anonymousEnable = anonymousEnable
            
            self.name = name
            
            self.aggregatorName = aggregatorName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    list = try container.decode([PaymentModeList].self, forKey: .list)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
            
            
            
                do {
                    addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    saveCard = try container.decode(Bool.self, forKey: .saveCard)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPayByCardPl = try container.decode(Bool.self, forKey: .isPayByCardPl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                do {
                    anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(list, forKey: .list)
            
            
            
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encode(addCardEnabled, forKey: .addCardEnabled)
            
            
            
            
            try? container.encode(saveCard, forKey: .saveCard)
            
            
            
            
            try? container.encode(isPayByCardPl, forKey: .isPayByCardPl)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(anonymousEnable, forKey: .anonymousEnable)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encode(aggregatorName, forKey: .aggregatorName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RootPaymentMode
        Used By: Payment
    */

    class RootPaymentMode: Codable {
        
        
        public var list: [PaymentModeList]?
        
        public var displayPriority: Int
        
        public var addCardEnabled: Bool?
        
        public var saveCard: Bool?
        
        public var isPayByCardPl: Bool?
        
        public var displayName: String
        
        public var anonymousEnable: Bool?
        
        public var name: String
        
        public var aggregatorName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case list = "list"
            
            case displayPriority = "display_priority"
            
            case addCardEnabled = "add_card_enabled"
            
            case saveCard = "save_card"
            
            case isPayByCardPl = "is_pay_by_card_pl"
            
            case displayName = "display_name"
            
            case anonymousEnable = "anonymous_enable"
            
            case name = "name"
            
            case aggregatorName = "aggregator_name"
            
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, isPayByCardPl: Bool? = nil, list: [PaymentModeList]? = nil, name: String, saveCard: Bool? = nil) {
            
            self.list = list
            
            self.displayPriority = displayPriority
            
            self.addCardEnabled = addCardEnabled
            
            self.saveCard = saveCard
            
            self.isPayByCardPl = isPayByCardPl
            
            self.displayName = displayName
            
            self.anonymousEnable = anonymousEnable
            
            self.name = name
            
            self.aggregatorName = aggregatorName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    list = try container.decode([PaymentModeList].self, forKey: .list)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
            
            
            
                do {
                    addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    saveCard = try container.decode(Bool.self, forKey: .saveCard)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPayByCardPl = try container.decode(Bool.self, forKey: .isPayByCardPl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                do {
                    anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(list, forKey: .list)
            
            
            
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encode(addCardEnabled, forKey: .addCardEnabled)
            
            
            
            
            try? container.encode(saveCard, forKey: .saveCard)
            
            
            
            
            try? container.encode(isPayByCardPl, forKey: .isPayByCardPl)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(anonymousEnable, forKey: .anonymousEnable)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encode(aggregatorName, forKey: .aggregatorName)
            
            
        }
        
    }
}


