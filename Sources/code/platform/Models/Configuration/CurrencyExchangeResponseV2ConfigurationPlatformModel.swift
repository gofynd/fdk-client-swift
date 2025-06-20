

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: CurrencyExchangeResponseV2
        Used By: Configuration
    */

    class CurrencyExchangeResponseV2: Codable {
        
        
        public var base: String
        
        public var baseCurrencyName: String
        
        public var ttlSeconds: Int
        
        public var items: [CurrencyExchangeItem]
        
        public var total: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case base = "base"
            
            case baseCurrencyName = "base_currency_name"
            
            case ttlSeconds = "ttl_seconds"
            
            case items = "items"
            
            case total = "total"
            
        }

        public init(base: String, baseCurrencyName: String, items: [CurrencyExchangeItem], total: Int, ttlSeconds: Int) {
            
            self.base = base
            
            self.baseCurrencyName = baseCurrencyName
            
            self.ttlSeconds = ttlSeconds
            
            self.items = items
            
            self.total = total
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                base = try container.decode(String.self, forKey: .base)
                
            
            
            
                baseCurrencyName = try container.decode(String.self, forKey: .baseCurrencyName)
                
            
            
            
                ttlSeconds = try container.decode(Int.self, forKey: .ttlSeconds)
                
            
            
            
                items = try container.decode([CurrencyExchangeItem].self, forKey: .items)
                
            
            
            
                total = try container.decode(Int.self, forKey: .total)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(base, forKey: .base)
            
            
            
            
            try? container.encodeIfPresent(baseCurrencyName, forKey: .baseCurrencyName)
            
            
            
            
            try? container.encodeIfPresent(ttlSeconds, forKey: .ttlSeconds)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: CurrencyExchangeResponseV2
        Used By: Configuration
    */

    class CurrencyExchangeResponseV2: Codable {
        
        
        public var base: String
        
        public var baseCurrencyName: String
        
        public var ttlSeconds: Int
        
        public var items: [CurrencyExchangeItem]
        
        public var total: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case base = "base"
            
            case baseCurrencyName = "base_currency_name"
            
            case ttlSeconds = "ttl_seconds"
            
            case items = "items"
            
            case total = "total"
            
        }

        public init(base: String, baseCurrencyName: String, items: [CurrencyExchangeItem], total: Int, ttlSeconds: Int) {
            
            self.base = base
            
            self.baseCurrencyName = baseCurrencyName
            
            self.ttlSeconds = ttlSeconds
            
            self.items = items
            
            self.total = total
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                base = try container.decode(String.self, forKey: .base)
                
            
            
            
                baseCurrencyName = try container.decode(String.self, forKey: .baseCurrencyName)
                
            
            
            
                ttlSeconds = try container.decode(Int.self, forKey: .ttlSeconds)
                
            
            
            
                items = try container.decode([CurrencyExchangeItem].self, forKey: .items)
                
            
            
            
                total = try container.decode(Int.self, forKey: .total)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(base, forKey: .base)
            
            
            
            
            try? container.encodeIfPresent(baseCurrencyName, forKey: .baseCurrencyName)
            
            
            
            
            try? container.encodeIfPresent(ttlSeconds, forKey: .ttlSeconds)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
        }
        
    }
}


