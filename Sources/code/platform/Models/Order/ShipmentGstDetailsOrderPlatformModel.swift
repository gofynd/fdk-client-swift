

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentGstDetails
        Used By: Order
    */

    class ShipmentGstDetails: Codable {
        
        
        public var valueOfGood: Double?
        
        public var gstFee: Double?
        
        public var brandCalculatedAmount: Double?
        
        public var taxCollectedAtSource: Double?
        
        public var gstinCode: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case valueOfGood = "value_of_good"
            
            case gstFee = "gst_fee"
            
            case brandCalculatedAmount = "brand_calculated_amount"
            
            case taxCollectedAtSource = "tax_collected_at_source"
            
            case gstinCode = "gstin_code"
            
        }

        public init(brandCalculatedAmount: Double? = nil, gstinCode: Double? = nil, gstFee: Double? = nil, taxCollectedAtSource: Double? = nil, valueOfGood: Double? = nil) {
            
            self.valueOfGood = valueOfGood
            
            self.gstFee = gstFee
            
            self.brandCalculatedAmount = brandCalculatedAmount
            
            self.taxCollectedAtSource = taxCollectedAtSource
            
            self.gstinCode = gstinCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstFee = try container.decode(Double.self, forKey: .gstFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstinCode = try container.decode(Double.self, forKey: .gstinCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(valueOfGood, forKey: .valueOfGood)
            
            
            
            
            try? container.encode(gstFee, forKey: .gstFee)
            
            
            
            
            try? container.encode(brandCalculatedAmount, forKey: .brandCalculatedAmount)
            
            
            
            
            try? container.encode(taxCollectedAtSource, forKey: .taxCollectedAtSource)
            
            
            
            
            try? container.encode(gstinCode, forKey: .gstinCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentGstDetails
        Used By: Order
    */

    class ShipmentGstDetails: Codable {
        
        
        public var valueOfGood: Double?
        
        public var gstFee: Double?
        
        public var brandCalculatedAmount: Double?
        
        public var taxCollectedAtSource: Double?
        
        public var gstinCode: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case valueOfGood = "value_of_good"
            
            case gstFee = "gst_fee"
            
            case brandCalculatedAmount = "brand_calculated_amount"
            
            case taxCollectedAtSource = "tax_collected_at_source"
            
            case gstinCode = "gstin_code"
            
        }

        public init(brandCalculatedAmount: Double? = nil, gstinCode: Double? = nil, gstFee: Double? = nil, taxCollectedAtSource: Double? = nil, valueOfGood: Double? = nil) {
            
            self.valueOfGood = valueOfGood
            
            self.gstFee = gstFee
            
            self.brandCalculatedAmount = brandCalculatedAmount
            
            self.taxCollectedAtSource = taxCollectedAtSource
            
            self.gstinCode = gstinCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstFee = try container.decode(Double.self, forKey: .gstFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstinCode = try container.decode(Double.self, forKey: .gstinCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(valueOfGood, forKey: .valueOfGood)
            
            
            
            
            try? container.encode(gstFee, forKey: .gstFee)
            
            
            
            
            try? container.encode(brandCalculatedAmount, forKey: .brandCalculatedAmount)
            
            
            
            
            try? container.encode(taxCollectedAtSource, forKey: .taxCollectedAtSource)
            
            
            
            
            try? container.encode(gstinCode, forKey: .gstinCode)
            
            
        }
        
    }
}


