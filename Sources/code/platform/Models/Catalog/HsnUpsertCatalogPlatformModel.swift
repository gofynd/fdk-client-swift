

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: HsnUpsert
        Used By: Catalog
    */

    class HsnUpsert: Codable {
        
        
        public var companyId: Int
        
        public var hs2Code: String
        
        public var hsnCode: String
        
        public var isActive: Bool?
        
        public var tax1: Double
        
        public var tax2: Double?
        
        public var taxOnEsp: Bool?
        
        public var taxOnMrp: Bool
        
        public var threshold1: Double
        
        public var threshold2: Double?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case hs2Code = "hs2_code"
            
            case hsnCode = "hsn_code"
            
            case isActive = "is_active"
            
            case tax1 = "tax1"
            
            case tax2 = "tax2"
            
            case taxOnEsp = "tax_on_esp"
            
            case taxOnMrp = "tax_on_mrp"
            
            case threshold1 = "threshold1"
            
            case threshold2 = "threshold2"
            
            case uid = "uid"
            
        }

        public init(companyId: Int, hs2Code: String, hsnCode: String, isActive: Bool? = nil, tax1: Double, tax2: Double? = nil, taxOnEsp: Bool? = nil, taxOnMrp: Bool, threshold1: Double, threshold2: Double? = nil, uid: Int? = nil) {
            
            self.companyId = companyId
            
            self.hs2Code = hs2Code
            
            self.hsnCode = hsnCode
            
            self.isActive = isActive
            
            self.tax1 = tax1
            
            self.tax2 = tax2
            
            self.taxOnEsp = taxOnEsp
            
            self.taxOnMrp = taxOnMrp
            
            self.threshold1 = threshold1
            
            self.threshold2 = threshold2
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                hs2Code = try container.decode(String.self, forKey: .hs2Code)
                
            
            
            
                hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                tax1 = try container.decode(Double.self, forKey: .tax1)
                
            
            
            
                do {
                    tax2 = try container.decode(Double.self, forKey: .tax2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxOnEsp = try container.decode(Bool.self, forKey: .taxOnEsp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                taxOnMrp = try container.decode(Bool.self, forKey: .taxOnMrp)
                
            
            
            
                threshold1 = try container.decode(Double.self, forKey: .threshold1)
                
            
            
            
                do {
                    threshold2 = try container.decode(Double.self, forKey: .threshold2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(hs2Code, forKey: .hs2Code)
            
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(tax1, forKey: .tax1)
            
            
            
            
            try? container.encodeIfPresent(tax2, forKey: .tax2)
            
            
            
            
            try? container.encodeIfPresent(taxOnEsp, forKey: .taxOnEsp)
            
            
            
            
            try? container.encodeIfPresent(taxOnMrp, forKey: .taxOnMrp)
            
            
            
            
            try? container.encodeIfPresent(threshold1, forKey: .threshold1)
            
            
            
            
            try? container.encodeIfPresent(threshold2, forKey: .threshold2)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: HsnUpsert
        Used By: Catalog
    */

    class HsnUpsert: Codable {
        
        
        public var companyId: Int
        
        public var hs2Code: String
        
        public var hsnCode: String
        
        public var isActive: Bool?
        
        public var tax1: Double
        
        public var tax2: Double?
        
        public var taxOnEsp: Bool?
        
        public var taxOnMrp: Bool
        
        public var threshold1: Double
        
        public var threshold2: Double?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case hs2Code = "hs2_code"
            
            case hsnCode = "hsn_code"
            
            case isActive = "is_active"
            
            case tax1 = "tax1"
            
            case tax2 = "tax2"
            
            case taxOnEsp = "tax_on_esp"
            
            case taxOnMrp = "tax_on_mrp"
            
            case threshold1 = "threshold1"
            
            case threshold2 = "threshold2"
            
            case uid = "uid"
            
        }

        public init(companyId: Int, hs2Code: String, hsnCode: String, isActive: Bool? = nil, tax1: Double, tax2: Double? = nil, taxOnEsp: Bool? = nil, taxOnMrp: Bool, threshold1: Double, threshold2: Double? = nil, uid: Int? = nil) {
            
            self.companyId = companyId
            
            self.hs2Code = hs2Code
            
            self.hsnCode = hsnCode
            
            self.isActive = isActive
            
            self.tax1 = tax1
            
            self.tax2 = tax2
            
            self.taxOnEsp = taxOnEsp
            
            self.taxOnMrp = taxOnMrp
            
            self.threshold1 = threshold1
            
            self.threshold2 = threshold2
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                hs2Code = try container.decode(String.self, forKey: .hs2Code)
                
            
            
            
                hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                tax1 = try container.decode(Double.self, forKey: .tax1)
                
            
            
            
                do {
                    tax2 = try container.decode(Double.self, forKey: .tax2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxOnEsp = try container.decode(Bool.self, forKey: .taxOnEsp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                taxOnMrp = try container.decode(Bool.self, forKey: .taxOnMrp)
                
            
            
            
                threshold1 = try container.decode(Double.self, forKey: .threshold1)
                
            
            
            
                do {
                    threshold2 = try container.decode(Double.self, forKey: .threshold2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(hs2Code, forKey: .hs2Code)
            
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(tax1, forKey: .tax1)
            
            
            
            
            try? container.encodeIfPresent(tax2, forKey: .tax2)
            
            
            
            
            try? container.encodeIfPresent(taxOnEsp, forKey: .taxOnEsp)
            
            
            
            
            try? container.encodeIfPresent(taxOnMrp, forKey: .taxOnMrp)
            
            
            
            
            try? container.encodeIfPresent(threshold1, forKey: .threshold1)
            
            
            
            
            try? container.encodeIfPresent(threshold2, forKey: .threshold2)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}


