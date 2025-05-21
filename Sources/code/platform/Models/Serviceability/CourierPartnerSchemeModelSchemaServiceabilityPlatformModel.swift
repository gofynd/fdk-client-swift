

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerSchemeModelSchema
        Used By: Serviceability
    */

    class CourierPartnerSchemeModelSchema: Codable {
        
        
        public var createdBy: CreatedBy?
        
        public var createdOn: String?
        
        public var modifiedBy: ModifiedBy?
        
        public var modifiedOn: String?
        
        public var extensionId: String?
        
        public var schemeId: String?
        
        public var companyId: String?
        
        public var name: String
        
        public var weight: ArithmeticOperations
        
        public var volumetricWeight: ArithmeticOperations?
        
        public var transportType: String
        
        public var region: String
        
        public var deliveryType: String
        
        public var paymentMode: [String]
        
        public var stage: String
        
        public var statusUpdates: String?
        
        public var ndrAttempts: Int?
        
        public var qcShipmentItemQuantity: Int?
        
        public var nonQcShipmentItemQuantity: Int?
        
        public var feature: CourierPartnerSchemeFeatures
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case extensionId = "extension_id"
            
            case schemeId = "scheme_id"
            
            case companyId = "company_id"
            
            case name = "name"
            
            case weight = "weight"
            
            case volumetricWeight = "volumetric_weight"
            
            case transportType = "transport_type"
            
            case region = "region"
            
            case deliveryType = "delivery_type"
            
            case paymentMode = "payment_mode"
            
            case stage = "stage"
            
            case statusUpdates = "status_updates"
            
            case ndrAttempts = "ndr_attempts"
            
            case qcShipmentItemQuantity = "qc_shipment_item_quantity"
            
            case nonQcShipmentItemQuantity = "non_qc_shipment_item_quantity"
            
            case feature = "feature"
            
        }

        public init(companyId: String? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, deliveryType: String, extensionId: String? = nil, feature: CourierPartnerSchemeFeatures, modifiedBy: ModifiedBy? = nil, modifiedOn: String? = nil, name: String, ndrAttempts: Int? = nil, nonQcShipmentItemQuantity: Int? = nil, paymentMode: [String], qcShipmentItemQuantity: Int? = nil, region: String, schemeId: String? = nil, stage: String, statusUpdates: String? = nil, transportType: String, volumetricWeight: ArithmeticOperations? = nil, weight: ArithmeticOperations) {
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.extensionId = extensionId
            
            self.schemeId = schemeId
            
            self.companyId = companyId
            
            self.name = name
            
            self.weight = weight
            
            self.volumetricWeight = volumetricWeight
            
            self.transportType = transportType
            
            self.region = region
            
            self.deliveryType = deliveryType
            
            self.paymentMode = paymentMode
            
            self.stage = stage
            
            self.statusUpdates = statusUpdates
            
            self.ndrAttempts = ndrAttempts
            
            self.qcShipmentItemQuantity = qcShipmentItemQuantity
            
            self.nonQcShipmentItemQuantity = nonQcShipmentItemQuantity
            
            self.feature = feature
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(ModifiedBy.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schemeId = try container.decode(String.self, forKey: .schemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(String.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                weight = try container.decode(ArithmeticOperations.self, forKey: .weight)
                
            
            
            
                do {
                    volumetricWeight = try container.decode(ArithmeticOperations.self, forKey: .volumetricWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                transportType = try container.decode(String.self, forKey: .transportType)
                
            
            
            
                region = try container.decode(String.self, forKey: .region)
                
            
            
            
                deliveryType = try container.decode(String.self, forKey: .deliveryType)
                
            
            
            
                paymentMode = try container.decode([String].self, forKey: .paymentMode)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                do {
                    statusUpdates = try container.decode(String.self, forKey: .statusUpdates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ndrAttempts = try container.decode(Int.self, forKey: .ndrAttempts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qcShipmentItemQuantity = try container.decode(Int.self, forKey: .qcShipmentItemQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nonQcShipmentItemQuantity = try container.decode(Int.self, forKey: .nonQcShipmentItemQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                feature = try container.decode(CourierPartnerSchemeFeatures.self, forKey: .feature)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(volumetricWeight, forKey: .volumetricWeight)
            
            
            
            
            try? container.encodeIfPresent(transportType, forKey: .transportType)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(deliveryType, forKey: .deliveryType)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(statusUpdates, forKey: .statusUpdates)
            
            
            
            
            try? container.encodeIfPresent(ndrAttempts, forKey: .ndrAttempts)
            
            
            
            
            try? container.encodeIfPresent(qcShipmentItemQuantity, forKey: .qcShipmentItemQuantity)
            
            
            
            
            try? container.encodeIfPresent(nonQcShipmentItemQuantity, forKey: .nonQcShipmentItemQuantity)
            
            
            
            
            try? container.encodeIfPresent(feature, forKey: .feature)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerSchemeModelSchema
        Used By: Serviceability
    */

    class CourierPartnerSchemeModelSchema: Codable {
        
        
        public var createdBy: CreatedBy?
        
        public var createdOn: String?
        
        public var modifiedBy: ModifiedBy?
        
        public var modifiedOn: String?
        
        public var extensionId: String?
        
        public var schemeId: String?
        
        public var companyId: String?
        
        public var name: String
        
        public var weight: ArithmeticOperations
        
        public var volumetricWeight: ArithmeticOperations?
        
        public var transportType: String
        
        public var region: String
        
        public var deliveryType: String
        
        public var paymentMode: [String]
        
        public var stage: String
        
        public var statusUpdates: String?
        
        public var ndrAttempts: Int?
        
        public var qcShipmentItemQuantity: Int?
        
        public var nonQcShipmentItemQuantity: Int?
        
        public var feature: CourierPartnerSchemeFeatures
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case extensionId = "extension_id"
            
            case schemeId = "scheme_id"
            
            case companyId = "company_id"
            
            case name = "name"
            
            case weight = "weight"
            
            case volumetricWeight = "volumetric_weight"
            
            case transportType = "transport_type"
            
            case region = "region"
            
            case deliveryType = "delivery_type"
            
            case paymentMode = "payment_mode"
            
            case stage = "stage"
            
            case statusUpdates = "status_updates"
            
            case ndrAttempts = "ndr_attempts"
            
            case qcShipmentItemQuantity = "qc_shipment_item_quantity"
            
            case nonQcShipmentItemQuantity = "non_qc_shipment_item_quantity"
            
            case feature = "feature"
            
        }

        public init(companyId: String? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, deliveryType: String, extensionId: String? = nil, feature: CourierPartnerSchemeFeatures, modifiedBy: ModifiedBy? = nil, modifiedOn: String? = nil, name: String, ndrAttempts: Int? = nil, nonQcShipmentItemQuantity: Int? = nil, paymentMode: [String], qcShipmentItemQuantity: Int? = nil, region: String, schemeId: String? = nil, stage: String, statusUpdates: String? = nil, transportType: String, volumetricWeight: ArithmeticOperations? = nil, weight: ArithmeticOperations) {
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.extensionId = extensionId
            
            self.schemeId = schemeId
            
            self.companyId = companyId
            
            self.name = name
            
            self.weight = weight
            
            self.volumetricWeight = volumetricWeight
            
            self.transportType = transportType
            
            self.region = region
            
            self.deliveryType = deliveryType
            
            self.paymentMode = paymentMode
            
            self.stage = stage
            
            self.statusUpdates = statusUpdates
            
            self.ndrAttempts = ndrAttempts
            
            self.qcShipmentItemQuantity = qcShipmentItemQuantity
            
            self.nonQcShipmentItemQuantity = nonQcShipmentItemQuantity
            
            self.feature = feature
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(ModifiedBy.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schemeId = try container.decode(String.self, forKey: .schemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(String.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                weight = try container.decode(ArithmeticOperations.self, forKey: .weight)
                
            
            
            
                do {
                    volumetricWeight = try container.decode(ArithmeticOperations.self, forKey: .volumetricWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                transportType = try container.decode(String.self, forKey: .transportType)
                
            
            
            
                region = try container.decode(String.self, forKey: .region)
                
            
            
            
                deliveryType = try container.decode(String.self, forKey: .deliveryType)
                
            
            
            
                paymentMode = try container.decode([String].self, forKey: .paymentMode)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                do {
                    statusUpdates = try container.decode(String.self, forKey: .statusUpdates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ndrAttempts = try container.decode(Int.self, forKey: .ndrAttempts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qcShipmentItemQuantity = try container.decode(Int.self, forKey: .qcShipmentItemQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nonQcShipmentItemQuantity = try container.decode(Int.self, forKey: .nonQcShipmentItemQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                feature = try container.decode(CourierPartnerSchemeFeatures.self, forKey: .feature)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(volumetricWeight, forKey: .volumetricWeight)
            
            
            
            
            try? container.encodeIfPresent(transportType, forKey: .transportType)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(deliveryType, forKey: .deliveryType)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(statusUpdates, forKey: .statusUpdates)
            
            
            
            
            try? container.encodeIfPresent(ndrAttempts, forKey: .ndrAttempts)
            
            
            
            
            try? container.encodeIfPresent(qcShipmentItemQuantity, forKey: .qcShipmentItemQuantity)
            
            
            
            
            try? container.encodeIfPresent(nonQcShipmentItemQuantity, forKey: .nonQcShipmentItemQuantity)
            
            
            
            
            try? container.encodeIfPresent(feature, forKey: .feature)
            
            
        }
        
    }
}


