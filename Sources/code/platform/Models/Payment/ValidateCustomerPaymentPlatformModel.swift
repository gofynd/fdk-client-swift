

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: ValidateCustomer
        Used By: Payment
    */

    class ValidateCustomer: Codable {
        
        
        public var data: ValidateCustomerData?
        
        public var aggregator: String?
        
        public var apiVersion: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case aggregator = "aggregator"
            
            case apiVersion = "api_version"
            
        }

        public init(aggregator: String? = nil, apiVersion: Int? = nil, data: ValidateCustomerData? = nil) {
            
            self.data = data
            
            self.aggregator = aggregator
            
            self.apiVersion = apiVersion
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(ValidateCustomerData.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    apiVersion = try container.decode(Int.self, forKey: .apiVersion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(apiVersion, forKey: .apiVersion)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: ValidateCustomer
        Used By: Payment
    */

    class ValidateCustomer: Codable {
        
        
        public var data: ValidateCustomerData?
        
        public var aggregator: String?
        
        public var apiVersion: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case aggregator = "aggregator"
            
            case apiVersion = "api_version"
            
        }

        public init(aggregator: String? = nil, apiVersion: Int? = nil, data: ValidateCustomerData? = nil) {
            
            self.data = data
            
            self.aggregator = aggregator
            
            self.apiVersion = apiVersion
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(ValidateCustomerData.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    apiVersion = try container.decode(Int.self, forKey: .apiVersion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(apiVersion, forKey: .apiVersion)
            
            
        }
        
    }
}


