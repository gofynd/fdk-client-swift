

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: InvoiceDetailsData
        Used By: Billing
    */

    class InvoiceDetailsData: Codable {
        
        
        public var attemp: Double?
        
        public var documents: [String: Any]?
        
        public var payment: [String: Any]?
        
        public var period: Period?
        
        public var client: Client?
        
        public var discount: [String: Any]?
        
        public var taxation: [String: Any]?
        
        public var id: String?
        
        public var autoAdvance: Bool?
        
        public var collectionMethod: String?
        
        public var subscriberId: String?
        
        public var currency: String?
        
        public var invoiceUrl: String?
        
        public var number: String?
        
        public var paid: Bool?
        
        public var pgData: [String: Any]?
        
        public var receiptNumber: String?
        
        public var statementDescriptor: String?
        
        public var currentStatus: String?
        
        public var statusTrail: [StatusTrail]?
        
        public var subtotal: Double?
        
        public var total: Double?
        
        public var oldSettlement: Double?
        
        public var creditBalance: Double?
        
        public var subscription: String?
        
        public var attempt: Double?
        
        public var nextActionTime: String?
        
        public var creditNoteAmount: Double?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case attemp = "attemp"
            
            case documents = "documents"
            
            case payment = "payment"
            
            case period = "period"
            
            case client = "client"
            
            case discount = "discount"
            
            case taxation = "taxation"
            
            case id = "_id"
            
            case autoAdvance = "auto_advance"
            
            case collectionMethod = "collection_method"
            
            case subscriberId = "subscriber_id"
            
            case currency = "currency"
            
            case invoiceUrl = "invoice_url"
            
            case number = "number"
            
            case paid = "paid"
            
            case pgData = "pg_data"
            
            case receiptNumber = "receipt_number"
            
            case statementDescriptor = "statement_descriptor"
            
            case currentStatus = "current_status"
            
            case statusTrail = "status_trail"
            
            case subtotal = "subtotal"
            
            case total = "total"
            
            case oldSettlement = "old_settlement"
            
            case creditBalance = "credit_balance"
            
            case subscription = "subscription"
            
            case attempt = "attempt"
            
            case nextActionTime = "next_action_time"
            
            case creditNoteAmount = "credit_note_amount"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
        }

        public init(attemp: Double? = nil, attempt: Double? = nil, autoAdvance: Bool? = nil, client: Client? = nil, collectionMethod: String? = nil, createdAt: String? = nil, creditBalance: Double? = nil, creditNoteAmount: Double? = nil, currency: String? = nil, currentStatus: String? = nil, discount: [String: Any]? = nil, documents: [String: Any]? = nil, invoiceUrl: String? = nil, modifiedAt: String? = nil, nextActionTime: String? = nil, number: String? = nil, oldSettlement: Double? = nil, paid: Bool? = nil, payment: [String: Any]? = nil, period: Period? = nil, pgData: [String: Any]? = nil, receiptNumber: String? = nil, statementDescriptor: String? = nil, statusTrail: [StatusTrail]? = nil, subscriberId: String? = nil, subscription: String? = nil, subtotal: Double? = nil, taxation: [String: Any]? = nil, total: Double? = nil, id: String? = nil) {
            
            self.attemp = attemp
            
            self.documents = documents
            
            self.payment = payment
            
            self.period = period
            
            self.client = client
            
            self.discount = discount
            
            self.taxation = taxation
            
            self.id = id
            
            self.autoAdvance = autoAdvance
            
            self.collectionMethod = collectionMethod
            
            self.subscriberId = subscriberId
            
            self.currency = currency
            
            self.invoiceUrl = invoiceUrl
            
            self.number = number
            
            self.paid = paid
            
            self.pgData = pgData
            
            self.receiptNumber = receiptNumber
            
            self.statementDescriptor = statementDescriptor
            
            self.currentStatus = currentStatus
            
            self.statusTrail = statusTrail
            
            self.subtotal = subtotal
            
            self.total = total
            
            self.oldSettlement = oldSettlement
            
            self.creditBalance = creditBalance
            
            self.subscription = subscription
            
            self.attempt = attempt
            
            self.nextActionTime = nextActionTime
            
            self.creditNoteAmount = creditNoteAmount
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    attemp = try container.decode(Double.self, forKey: .attemp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    documents = try container.decode([String: Any].self, forKey: .documents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payment = try container.decode([String: Any].self, forKey: .payment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    period = try container.decode(Period.self, forKey: .period)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    client = try container.decode(Client.self, forKey: .client)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode([String: Any].self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxation = try container.decode([String: Any].self, forKey: .taxation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoAdvance = try container.decode(Bool.self, forKey: .autoAdvance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collectionMethod = try container.decode(String.self, forKey: .collectionMethod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscriberId = try container.decode(String.self, forKey: .subscriberId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceUrl = try container.decode(String.self, forKey: .invoiceUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    number = try container.decode(String.self, forKey: .number)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paid = try container.decode(Bool.self, forKey: .paid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pgData = try container.decode([String: Any].self, forKey: .pgData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    receiptNumber = try container.decode(String.self, forKey: .receiptNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statementDescriptor = try container.decode(String.self, forKey: .statementDescriptor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentStatus = try container.decode(String.self, forKey: .currentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusTrail = try container.decode([StatusTrail].self, forKey: .statusTrail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subtotal = try container.decode(Double.self, forKey: .subtotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    oldSettlement = try container.decode(Double.self, forKey: .oldSettlement)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditBalance = try container.decode(Double.self, forKey: .creditBalance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscription = try container.decode(String.self, forKey: .subscription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attempt = try container.decode(Double.self, forKey: .attempt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nextActionTime = try container.decode(String.self, forKey: .nextActionTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteAmount = try container.decode(Double.self, forKey: .creditNoteAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(attemp, forKey: .attemp)
            
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(period, forKey: .period)
            
            
            
            
            try? container.encodeIfPresent(client, forKey: .client)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(taxation, forKey: .taxation)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(autoAdvance, forKey: .autoAdvance)
            
            
            
            
            try? container.encodeIfPresent(collectionMethod, forKey: .collectionMethod)
            
            
            
            
            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(invoiceUrl, forKey: .invoiceUrl)
            
            
            
            
            try? container.encodeIfPresent(number, forKey: .number)
            
            
            
            
            try? container.encodeIfPresent(paid, forKey: .paid)
            
            
            
            
            try? container.encodeIfPresent(pgData, forKey: .pgData)
            
            
            
            
            try? container.encodeIfPresent(receiptNumber, forKey: .receiptNumber)
            
            
            
            
            try? container.encodeIfPresent(statementDescriptor, forKey: .statementDescriptor)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(statusTrail, forKey: .statusTrail)
            
            
            
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(oldSettlement, forKey: .oldSettlement)
            
            
            
            
            try? container.encodeIfPresent(creditBalance, forKey: .creditBalance)
            
            
            
            
            try? container.encodeIfPresent(subscription, forKey: .subscription)
            
            
            
            
            try? container.encodeIfPresent(attempt, forKey: .attempt)
            
            
            
            
            try? container.encodeIfPresent(nextActionTime, forKey: .nextActionTime)
            
            
            
            
            try? container.encodeIfPresent(creditNoteAmount, forKey: .creditNoteAmount)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
        }
        
    }
}




