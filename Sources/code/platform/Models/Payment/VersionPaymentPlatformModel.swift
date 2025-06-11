

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: Version
        Used By: Payment
    */

    class Version: Codable {
        
        
        public var razorpay: [VersionDetails]?
        
        public var rupifi: [VersionDetails]?
        
        public var jio: [VersionDetails]?
        
        public var stripe: [VersionDetails]?
        
        public var payumoney: [VersionDetails]?
        
        public var jiopay: [VersionDetails]?
        
        public var fynd: [VersionDetails]?
        
        public var potlee: [VersionDetails]?
        
        public var juspay: [VersionDetails]?
        
        public var simpl: [VersionDetails]?
        
        public var checkout: [VersionDetails]?
        

        public enum CodingKeys: String, CodingKey {
            
            case razorpay = "razorpay"
            
            case rupifi = "rupifi"
            
            case jio = "jio"
            
            case stripe = "stripe"
            
            case payumoney = "payumoney"
            
            case jiopay = "jiopay"
            
            case fynd = "fynd"
            
            case potlee = "potlee"
            
            case juspay = "juspay"
            
            case simpl = "simpl"
            
            case checkout = "checkout"
            
        }

        public init(checkout: [VersionDetails]? = nil, fynd: [VersionDetails]? = nil, jio: [VersionDetails]? = nil, jiopay: [VersionDetails]? = nil, juspay: [VersionDetails]? = nil, payumoney: [VersionDetails]? = nil, potlee: [VersionDetails]? = nil, razorpay: [VersionDetails]? = nil, rupifi: [VersionDetails]? = nil, simpl: [VersionDetails]? = nil, stripe: [VersionDetails]? = nil) {
            
            self.razorpay = razorpay
            
            self.rupifi = rupifi
            
            self.jio = jio
            
            self.stripe = stripe
            
            self.payumoney = payumoney
            
            self.jiopay = jiopay
            
            self.fynd = fynd
            
            self.potlee = potlee
            
            self.juspay = juspay
            
            self.simpl = simpl
            
            self.checkout = checkout
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    razorpay = try container.decode([VersionDetails].self, forKey: .razorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rupifi = try container.decode([VersionDetails].self, forKey: .rupifi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    jio = try container.decode([VersionDetails].self, forKey: .jio)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stripe = try container.decode([VersionDetails].self, forKey: .stripe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payumoney = try container.decode([VersionDetails].self, forKey: .payumoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    jiopay = try container.decode([VersionDetails].self, forKey: .jiopay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fynd = try container.decode([VersionDetails].self, forKey: .fynd)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    potlee = try container.decode([VersionDetails].self, forKey: .potlee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    juspay = try container.decode([VersionDetails].self, forKey: .juspay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    simpl = try container.decode([VersionDetails].self, forKey: .simpl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checkout = try container.decode([VersionDetails].self, forKey: .checkout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(razorpay, forKey: .razorpay)
            
            
            
            
            try? container.encodeIfPresent(rupifi, forKey: .rupifi)
            
            
            
            
            try? container.encodeIfPresent(jio, forKey: .jio)
            
            
            
            
            try? container.encodeIfPresent(stripe, forKey: .stripe)
            
            
            
            
            try? container.encodeIfPresent(payumoney, forKey: .payumoney)
            
            
            
            
            try? container.encodeIfPresent(jiopay, forKey: .jiopay)
            
            
            
            
            try? container.encodeIfPresent(fynd, forKey: .fynd)
            
            
            
            
            try? container.encodeIfPresent(potlee, forKey: .potlee)
            
            
            
            
            try? container.encodeIfPresent(juspay, forKey: .juspay)
            
            
            
            
            try? container.encodeIfPresent(simpl, forKey: .simpl)
            
            
            
            
            try? container.encodeIfPresent(checkout, forKey: .checkout)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: Version
        Used By: Payment
    */

    class Version: Codable {
        
        
        public var razorpay: [VersionDetails]?
        
        public var rupifi: [VersionDetails]?
        
        public var jio: [VersionDetails]?
        
        public var stripe: [VersionDetails]?
        
        public var payumoney: [VersionDetails]?
        
        public var jiopay: [VersionDetails]?
        
        public var fynd: [VersionDetails]?
        
        public var potlee: [VersionDetails]?
        
        public var juspay: [VersionDetails]?
        
        public var simpl: [VersionDetails]?
        
        public var checkout: [VersionDetails]?
        

        public enum CodingKeys: String, CodingKey {
            
            case razorpay = "razorpay"
            
            case rupifi = "rupifi"
            
            case jio = "jio"
            
            case stripe = "stripe"
            
            case payumoney = "payumoney"
            
            case jiopay = "jiopay"
            
            case fynd = "fynd"
            
            case potlee = "potlee"
            
            case juspay = "juspay"
            
            case simpl = "simpl"
            
            case checkout = "checkout"
            
        }

        public init(checkout: [VersionDetails]? = nil, fynd: [VersionDetails]? = nil, jio: [VersionDetails]? = nil, jiopay: [VersionDetails]? = nil, juspay: [VersionDetails]? = nil, payumoney: [VersionDetails]? = nil, potlee: [VersionDetails]? = nil, razorpay: [VersionDetails]? = nil, rupifi: [VersionDetails]? = nil, simpl: [VersionDetails]? = nil, stripe: [VersionDetails]? = nil) {
            
            self.razorpay = razorpay
            
            self.rupifi = rupifi
            
            self.jio = jio
            
            self.stripe = stripe
            
            self.payumoney = payumoney
            
            self.jiopay = jiopay
            
            self.fynd = fynd
            
            self.potlee = potlee
            
            self.juspay = juspay
            
            self.simpl = simpl
            
            self.checkout = checkout
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    razorpay = try container.decode([VersionDetails].self, forKey: .razorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rupifi = try container.decode([VersionDetails].self, forKey: .rupifi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    jio = try container.decode([VersionDetails].self, forKey: .jio)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stripe = try container.decode([VersionDetails].self, forKey: .stripe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payumoney = try container.decode([VersionDetails].self, forKey: .payumoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    jiopay = try container.decode([VersionDetails].self, forKey: .jiopay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fynd = try container.decode([VersionDetails].self, forKey: .fynd)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    potlee = try container.decode([VersionDetails].self, forKey: .potlee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    juspay = try container.decode([VersionDetails].self, forKey: .juspay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    simpl = try container.decode([VersionDetails].self, forKey: .simpl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checkout = try container.decode([VersionDetails].self, forKey: .checkout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(razorpay, forKey: .razorpay)
            
            
            
            
            try? container.encodeIfPresent(rupifi, forKey: .rupifi)
            
            
            
            
            try? container.encodeIfPresent(jio, forKey: .jio)
            
            
            
            
            try? container.encodeIfPresent(stripe, forKey: .stripe)
            
            
            
            
            try? container.encodeIfPresent(payumoney, forKey: .payumoney)
            
            
            
            
            try? container.encodeIfPresent(jiopay, forKey: .jiopay)
            
            
            
            
            try? container.encodeIfPresent(fynd, forKey: .fynd)
            
            
            
            
            try? container.encodeIfPresent(potlee, forKey: .potlee)
            
            
            
            
            try? container.encodeIfPresent(juspay, forKey: .juspay)
            
            
            
            
            try? container.encodeIfPresent(simpl, forKey: .simpl)
            
            
            
            
            try? container.encodeIfPresent(checkout, forKey: .checkout)
            
            
        }
        
    }
}


