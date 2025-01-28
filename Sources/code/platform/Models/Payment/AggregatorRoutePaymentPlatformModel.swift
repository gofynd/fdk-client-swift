

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: AggregatorRoute
        Used By: Payment
    */

    class AggregatorRoute: Codable {
        
        
        public var data: AggregatorRouteData?
        
        public var paymentFlowData: [String: Any]?
        
        public var paymentFlow: String?
        
        public var apiLink: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case paymentFlowData = "payment_flow_data"
            
            case paymentFlow = "payment_flow"
            
            case apiLink = "api_link"
            
            case type = "type"
            
        }

        public init(apiLink: String? = nil, data: AggregatorRouteData? = nil, paymentFlow: String? = nil, paymentFlowData: [String: Any]? = nil, type: String? = nil) {
            
            self.data = data
            
            self.paymentFlowData = paymentFlowData
            
            self.paymentFlow = paymentFlow
            
            self.apiLink = apiLink
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(AggregatorRouteData.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentFlowData = try container.decode([String: Any].self, forKey: .paymentFlowData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentFlow = try container.decode(String.self, forKey: .paymentFlow)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    apiLink = try container.decode(String.self, forKey: .apiLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(paymentFlowData, forKey: .paymentFlowData)
            
            
            
            
            try? container.encodeIfPresent(paymentFlow, forKey: .paymentFlow)
            
            
            
            
            try? container.encodeIfPresent(apiLink, forKey: .apiLink)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: AggregatorRoute
        Used By: Payment
    */

    class AggregatorRoute: Codable {
        
        
        public var data: AggregatorRouteData?
        
        public var paymentFlowData: [String: Any]?
        
        public var paymentFlow: String?
        
        public var apiLink: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case paymentFlowData = "payment_flow_data"
            
            case paymentFlow = "payment_flow"
            
            case apiLink = "api_link"
            
            case type = "type"
            
        }

        public init(apiLink: String? = nil, data: AggregatorRouteData? = nil, paymentFlow: String? = nil, paymentFlowData: [String: Any]? = nil, type: String? = nil) {
            
            self.data = data
            
            self.paymentFlowData = paymentFlowData
            
            self.paymentFlow = paymentFlow
            
            self.apiLink = apiLink
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(AggregatorRouteData.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentFlowData = try container.decode([String: Any].self, forKey: .paymentFlowData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentFlow = try container.decode(String.self, forKey: .paymentFlow)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    apiLink = try container.decode(String.self, forKey: .apiLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(paymentFlowData, forKey: .paymentFlowData)
            
            
            
            
            try? container.encodeIfPresent(paymentFlow, forKey: .paymentFlow)
            
            
            
            
            try? container.encodeIfPresent(apiLink, forKey: .apiLink)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


