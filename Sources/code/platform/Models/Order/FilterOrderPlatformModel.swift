

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Filter
        Used By: Order
    */

    class Filter: Codable {
        
        
        public var orderType: String?
        
        public var isPartialTransition: Bool?
        
        public var autoTriggerDpAssignmentAcf: Bool?
        
        public var lockStatus: String?
        
        public var lockAfterTransition: Bool?
        
        public var resumeTasksAfterUnlock: Bool?
        
        public var isInvoiceIdPresent: Bool?
        
        public var isCreditNoteGenerated: Bool?
        
        public var fulfillVirtualInvoice: Bool?
        
        public var nextStatus: String?
        
        public var isHookEnabled: Bool?
        
        public var posCreditNoteCheck: Bool?
        
        public var orderPlatform: String?
        
        public var refundType: String?
        
        public var isNonPosPlatform: Bool?
        
        public var isSelfShip: Bool?
        
        public var sellerCountryCode: String?
        
        public var customerCountryCode: String?
        
        public var isTestOrder: Bool?
        
        public var taskTriggerCondition: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderType = "order_type"
            
            case isPartialTransition = "is_partial_transition"
            
            case autoTriggerDpAssignmentAcf = "auto_trigger_dp_assignment_acf"
            
            case lockStatus = "lock_status"
            
            case lockAfterTransition = "lock_after_transition"
            
            case resumeTasksAfterUnlock = "resume_tasks_after_unlock"
            
            case isInvoiceIdPresent = "is_invoice_id_present"
            
            case isCreditNoteGenerated = "is_credit_note_generated"
            
            case fulfillVirtualInvoice = "fulfill_virtual_invoice"
            
            case nextStatus = "next_status"
            
            case isHookEnabled = "is_hook_enabled"
            
            case posCreditNoteCheck = "pos_credit_note_check"
            
            case orderPlatform = "order_platform"
            
            case refundType = "refund_type"
            
            case isNonPosPlatform = "is_non_pos_platform"
            
            case isSelfShip = "is_self_ship"
            
            case sellerCountryCode = "seller_country_code"
            
            case customerCountryCode = "customer_country_code"
            
            case isTestOrder = "is_test_order"
            
            case taskTriggerCondition = "task_trigger_condition"
            
        }

        public init(autoTriggerDpAssignmentAcf: Bool? = nil, customerCountryCode: String? = nil, fulfillVirtualInvoice: Bool? = nil, isCreditNoteGenerated: Bool? = nil, isHookEnabled: Bool? = nil, isInvoiceIdPresent: Bool? = nil, isNonPosPlatform: Bool? = nil, isPartialTransition: Bool? = nil, isSelfShip: Bool? = nil, isTestOrder: Bool? = nil, lockAfterTransition: Bool? = nil, lockStatus: String? = nil, nextStatus: String? = nil, orderPlatform: String? = nil, orderType: String? = nil, posCreditNoteCheck: Bool? = nil, refundType: String? = nil, resumeTasksAfterUnlock: Bool? = nil, sellerCountryCode: String? = nil, taskTriggerCondition: [String]? = nil) {
            
            self.orderType = orderType
            
            self.isPartialTransition = isPartialTransition
            
            self.autoTriggerDpAssignmentAcf = autoTriggerDpAssignmentAcf
            
            self.lockStatus = lockStatus
            
            self.lockAfterTransition = lockAfterTransition
            
            self.resumeTasksAfterUnlock = resumeTasksAfterUnlock
            
            self.isInvoiceIdPresent = isInvoiceIdPresent
            
            self.isCreditNoteGenerated = isCreditNoteGenerated
            
            self.fulfillVirtualInvoice = fulfillVirtualInvoice
            
            self.nextStatus = nextStatus
            
            self.isHookEnabled = isHookEnabled
            
            self.posCreditNoteCheck = posCreditNoteCheck
            
            self.orderPlatform = orderPlatform
            
            self.refundType = refundType
            
            self.isNonPosPlatform = isNonPosPlatform
            
            self.isSelfShip = isSelfShip
            
            self.sellerCountryCode = sellerCountryCode
            
            self.customerCountryCode = customerCountryCode
            
            self.isTestOrder = isTestOrder
            
            self.taskTriggerCondition = taskTriggerCondition
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPartialTransition = try container.decode(Bool.self, forKey: .isPartialTransition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoTriggerDpAssignmentAcf = try container.decode(Bool.self, forKey: .autoTriggerDpAssignmentAcf)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockStatus = try container.decode(String.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockAfterTransition = try container.decode(Bool.self, forKey: .lockAfterTransition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    resumeTasksAfterUnlock = try container.decode(Bool.self, forKey: .resumeTasksAfterUnlock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isInvoiceIdPresent = try container.decode(Bool.self, forKey: .isInvoiceIdPresent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCreditNoteGenerated = try container.decode(Bool.self, forKey: .isCreditNoteGenerated)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillVirtualInvoice = try container.decode(Bool.self, forKey: .fulfillVirtualInvoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nextStatus = try container.decode(String.self, forKey: .nextStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isHookEnabled = try container.decode(Bool.self, forKey: .isHookEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    posCreditNoteCheck = try container.decode(Bool.self, forKey: .posCreditNoteCheck)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderPlatform = try container.decode(String.self, forKey: .orderPlatform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundType = try container.decode(String.self, forKey: .refundType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isNonPosPlatform = try container.decode(Bool.self, forKey: .isNonPosPlatform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerCountryCode = try container.decode(String.self, forKey: .sellerCountryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerCountryCode = try container.decode(String.self, forKey: .customerCountryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isTestOrder = try container.decode(Bool.self, forKey: .isTestOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taskTriggerCondition = try container.decode([String].self, forKey: .taskTriggerCondition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(isPartialTransition, forKey: .isPartialTransition)
            
            
            
            
            try? container.encodeIfPresent(autoTriggerDpAssignmentAcf, forKey: .autoTriggerDpAssignmentAcf)
            
            
            
            
            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encodeIfPresent(lockAfterTransition, forKey: .lockAfterTransition)
            
            
            
            
            try? container.encodeIfPresent(resumeTasksAfterUnlock, forKey: .resumeTasksAfterUnlock)
            
            
            
            
            try? container.encodeIfPresent(isInvoiceIdPresent, forKey: .isInvoiceIdPresent)
            
            
            
            
            try? container.encodeIfPresent(isCreditNoteGenerated, forKey: .isCreditNoteGenerated)
            
            
            
            
            try? container.encodeIfPresent(fulfillVirtualInvoice, forKey: .fulfillVirtualInvoice)
            
            
            
            
            try? container.encodeIfPresent(nextStatus, forKey: .nextStatus)
            
            
            
            
            try? container.encodeIfPresent(isHookEnabled, forKey: .isHookEnabled)
            
            
            
            
            try? container.encodeIfPresent(posCreditNoteCheck, forKey: .posCreditNoteCheck)
            
            
            
            
            try? container.encodeIfPresent(orderPlatform, forKey: .orderPlatform)
            
            
            
            
            try? container.encodeIfPresent(refundType, forKey: .refundType)
            
            
            
            
            try? container.encodeIfPresent(isNonPosPlatform, forKey: .isNonPosPlatform)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(sellerCountryCode, forKey: .sellerCountryCode)
            
            
            
            
            try? container.encodeIfPresent(customerCountryCode, forKey: .customerCountryCode)
            
            
            
            
            try? container.encodeIfPresent(isTestOrder, forKey: .isTestOrder)
            
            
            
            
            try? container.encodeIfPresent(taskTriggerCondition, forKey: .taskTriggerCondition)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Filter
        Used By: Order
    */

    class Filter: Codable {
        
        
        public var orderType: String?
        
        public var isPartialTransition: Bool?
        
        public var autoTriggerDpAssignmentAcf: Bool?
        
        public var lockStatus: String?
        
        public var lockAfterTransition: Bool?
        
        public var resumeTasksAfterUnlock: Bool?
        
        public var isInvoiceIdPresent: Bool?
        
        public var isCreditNoteGenerated: Bool?
        
        public var fulfillVirtualInvoice: Bool?
        
        public var nextStatus: String?
        
        public var isHookEnabled: Bool?
        
        public var posCreditNoteCheck: Bool?
        
        public var orderPlatform: String?
        
        public var refundType: String?
        
        public var isNonPosPlatform: Bool?
        
        public var isSelfShip: Bool?
        
        public var sellerCountryCode: String?
        
        public var customerCountryCode: String?
        
        public var isTestOrder: Bool?
        
        public var taskTriggerCondition: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderType = "order_type"
            
            case isPartialTransition = "is_partial_transition"
            
            case autoTriggerDpAssignmentAcf = "auto_trigger_dp_assignment_acf"
            
            case lockStatus = "lock_status"
            
            case lockAfterTransition = "lock_after_transition"
            
            case resumeTasksAfterUnlock = "resume_tasks_after_unlock"
            
            case isInvoiceIdPresent = "is_invoice_id_present"
            
            case isCreditNoteGenerated = "is_credit_note_generated"
            
            case fulfillVirtualInvoice = "fulfill_virtual_invoice"
            
            case nextStatus = "next_status"
            
            case isHookEnabled = "is_hook_enabled"
            
            case posCreditNoteCheck = "pos_credit_note_check"
            
            case orderPlatform = "order_platform"
            
            case refundType = "refund_type"
            
            case isNonPosPlatform = "is_non_pos_platform"
            
            case isSelfShip = "is_self_ship"
            
            case sellerCountryCode = "seller_country_code"
            
            case customerCountryCode = "customer_country_code"
            
            case isTestOrder = "is_test_order"
            
            case taskTriggerCondition = "task_trigger_condition"
            
        }

        public init(autoTriggerDpAssignmentAcf: Bool? = nil, customerCountryCode: String? = nil, fulfillVirtualInvoice: Bool? = nil, isCreditNoteGenerated: Bool? = nil, isHookEnabled: Bool? = nil, isInvoiceIdPresent: Bool? = nil, isNonPosPlatform: Bool? = nil, isPartialTransition: Bool? = nil, isSelfShip: Bool? = nil, isTestOrder: Bool? = nil, lockAfterTransition: Bool? = nil, lockStatus: String? = nil, nextStatus: String? = nil, orderPlatform: String? = nil, orderType: String? = nil, posCreditNoteCheck: Bool? = nil, refundType: String? = nil, resumeTasksAfterUnlock: Bool? = nil, sellerCountryCode: String? = nil, taskTriggerCondition: [String]? = nil) {
            
            self.orderType = orderType
            
            self.isPartialTransition = isPartialTransition
            
            self.autoTriggerDpAssignmentAcf = autoTriggerDpAssignmentAcf
            
            self.lockStatus = lockStatus
            
            self.lockAfterTransition = lockAfterTransition
            
            self.resumeTasksAfterUnlock = resumeTasksAfterUnlock
            
            self.isInvoiceIdPresent = isInvoiceIdPresent
            
            self.isCreditNoteGenerated = isCreditNoteGenerated
            
            self.fulfillVirtualInvoice = fulfillVirtualInvoice
            
            self.nextStatus = nextStatus
            
            self.isHookEnabled = isHookEnabled
            
            self.posCreditNoteCheck = posCreditNoteCheck
            
            self.orderPlatform = orderPlatform
            
            self.refundType = refundType
            
            self.isNonPosPlatform = isNonPosPlatform
            
            self.isSelfShip = isSelfShip
            
            self.sellerCountryCode = sellerCountryCode
            
            self.customerCountryCode = customerCountryCode
            
            self.isTestOrder = isTestOrder
            
            self.taskTriggerCondition = taskTriggerCondition
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPartialTransition = try container.decode(Bool.self, forKey: .isPartialTransition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoTriggerDpAssignmentAcf = try container.decode(Bool.self, forKey: .autoTriggerDpAssignmentAcf)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockStatus = try container.decode(String.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockAfterTransition = try container.decode(Bool.self, forKey: .lockAfterTransition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    resumeTasksAfterUnlock = try container.decode(Bool.self, forKey: .resumeTasksAfterUnlock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isInvoiceIdPresent = try container.decode(Bool.self, forKey: .isInvoiceIdPresent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCreditNoteGenerated = try container.decode(Bool.self, forKey: .isCreditNoteGenerated)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillVirtualInvoice = try container.decode(Bool.self, forKey: .fulfillVirtualInvoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nextStatus = try container.decode(String.self, forKey: .nextStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isHookEnabled = try container.decode(Bool.self, forKey: .isHookEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    posCreditNoteCheck = try container.decode(Bool.self, forKey: .posCreditNoteCheck)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderPlatform = try container.decode(String.self, forKey: .orderPlatform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundType = try container.decode(String.self, forKey: .refundType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isNonPosPlatform = try container.decode(Bool.self, forKey: .isNonPosPlatform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerCountryCode = try container.decode(String.self, forKey: .sellerCountryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerCountryCode = try container.decode(String.self, forKey: .customerCountryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isTestOrder = try container.decode(Bool.self, forKey: .isTestOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taskTriggerCondition = try container.decode([String].self, forKey: .taskTriggerCondition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(isPartialTransition, forKey: .isPartialTransition)
            
            
            
            
            try? container.encodeIfPresent(autoTriggerDpAssignmentAcf, forKey: .autoTriggerDpAssignmentAcf)
            
            
            
            
            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encodeIfPresent(lockAfterTransition, forKey: .lockAfterTransition)
            
            
            
            
            try? container.encodeIfPresent(resumeTasksAfterUnlock, forKey: .resumeTasksAfterUnlock)
            
            
            
            
            try? container.encodeIfPresent(isInvoiceIdPresent, forKey: .isInvoiceIdPresent)
            
            
            
            
            try? container.encodeIfPresent(isCreditNoteGenerated, forKey: .isCreditNoteGenerated)
            
            
            
            
            try? container.encodeIfPresent(fulfillVirtualInvoice, forKey: .fulfillVirtualInvoice)
            
            
            
            
            try? container.encodeIfPresent(nextStatus, forKey: .nextStatus)
            
            
            
            
            try? container.encodeIfPresent(isHookEnabled, forKey: .isHookEnabled)
            
            
            
            
            try? container.encodeIfPresent(posCreditNoteCheck, forKey: .posCreditNoteCheck)
            
            
            
            
            try? container.encodeIfPresent(orderPlatform, forKey: .orderPlatform)
            
            
            
            
            try? container.encodeIfPresent(refundType, forKey: .refundType)
            
            
            
            
            try? container.encodeIfPresent(isNonPosPlatform, forKey: .isNonPosPlatform)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(sellerCountryCode, forKey: .sellerCountryCode)
            
            
            
            
            try? container.encodeIfPresent(customerCountryCode, forKey: .customerCountryCode)
            
            
            
            
            try? container.encodeIfPresent(isTestOrder, forKey: .isTestOrder)
            
            
            
            
            try? container.encodeIfPresent(taskTriggerCondition, forKey: .taskTriggerCondition)
            
            
        }
        
    }
}


