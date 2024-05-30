

import Foundation


public extension PlatformClient.Order {
    /*
        Model: B2BPODetails
        Used By: Order
    */

    class B2BPODetails: Codable {
        
        
        public var dockerNumber: String?
        
        public var poLineAmount: Double?
        
        public var totalGstPercentage: Double?
        
        public var partialCanRet: Bool?
        
        public var poTaxAmount: Double?
        
        public var itemBasePrice: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case dockerNumber = "docker_number"
            
            case poLineAmount = "po_line_amount"
            
            case totalGstPercentage = "total_gst_percentage"
            
            case partialCanRet = "partial_can_ret"
            
            case poTaxAmount = "po_tax_amount"
            
            case itemBasePrice = "item_base_price"
            
        }

        public init(dockerNumber: String? = nil, itemBasePrice: Double? = nil, partialCanRet: Bool? = nil, poLineAmount: Double? = nil, poTaxAmount: Double? = nil, totalGstPercentage: Double? = nil) {
            
            self.dockerNumber = dockerNumber
            
            self.poLineAmount = poLineAmount
            
            self.totalGstPercentage = totalGstPercentage
            
            self.partialCanRet = partialCanRet
            
            self.poTaxAmount = poTaxAmount
            
            self.itemBasePrice = itemBasePrice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    dockerNumber = try container.decode(String.self, forKey: .dockerNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    poLineAmount = try container.decode(Double.self, forKey: .poLineAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalGstPercentage = try container.decode(Double.self, forKey: .totalGstPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    partialCanRet = try container.decode(Bool.self, forKey: .partialCanRet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    poTaxAmount = try container.decode(Double.self, forKey: .poTaxAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemBasePrice = try container.decode(Double.self, forKey: .itemBasePrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dockerNumber, forKey: .dockerNumber)
            
            
            
            
            try? container.encodeIfPresent(poLineAmount, forKey: .poLineAmount)
            
            
            
            
            try? container.encodeIfPresent(totalGstPercentage, forKey: .totalGstPercentage)
            
            
            
            
            try? container.encodeIfPresent(partialCanRet, forKey: .partialCanRet)
            
            
            
            
            try? container.encodeIfPresent(poTaxAmount, forKey: .poTaxAmount)
            
            
            
            
            try? container.encodeIfPresent(itemBasePrice, forKey: .itemBasePrice)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: B2BPODetails
        Used By: Order
    */

    class B2BPODetails: Codable {
        
        
        public var dockerNumber: String?
        
        public var poLineAmount: Double?
        
        public var totalGstPercentage: Double?
        
        public var partialCanRet: Bool?
        
        public var poTaxAmount: Double?
        
        public var itemBasePrice: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case dockerNumber = "docker_number"
            
            case poLineAmount = "po_line_amount"
            
            case totalGstPercentage = "total_gst_percentage"
            
            case partialCanRet = "partial_can_ret"
            
            case poTaxAmount = "po_tax_amount"
            
            case itemBasePrice = "item_base_price"
            
        }

        public init(dockerNumber: String? = nil, itemBasePrice: Double? = nil, partialCanRet: Bool? = nil, poLineAmount: Double? = nil, poTaxAmount: Double? = nil, totalGstPercentage: Double? = nil) {
            
            self.dockerNumber = dockerNumber
            
            self.poLineAmount = poLineAmount
            
            self.totalGstPercentage = totalGstPercentage
            
            self.partialCanRet = partialCanRet
            
            self.poTaxAmount = poTaxAmount
            
            self.itemBasePrice = itemBasePrice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    dockerNumber = try container.decode(String.self, forKey: .dockerNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    poLineAmount = try container.decode(Double.self, forKey: .poLineAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalGstPercentage = try container.decode(Double.self, forKey: .totalGstPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    partialCanRet = try container.decode(Bool.self, forKey: .partialCanRet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    poTaxAmount = try container.decode(Double.self, forKey: .poTaxAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemBasePrice = try container.decode(Double.self, forKey: .itemBasePrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dockerNumber, forKey: .dockerNumber)
            
            
            
            
            try? container.encodeIfPresent(poLineAmount, forKey: .poLineAmount)
            
            
            
            
            try? container.encodeIfPresent(totalGstPercentage, forKey: .totalGstPercentage)
            
            
            
            
            try? container.encodeIfPresent(partialCanRet, forKey: .partialCanRet)
            
            
            
            
            try? container.encodeIfPresent(poTaxAmount, forKey: .poTaxAmount)
            
            
            
            
            try? container.encodeIfPresent(itemBasePrice, forKey: .itemBasePrice)
            
            
        }
        
    }
}


