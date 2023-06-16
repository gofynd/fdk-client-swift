

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var refundObject: [String: Any]?

        public var amountInPaisa: String

        public var paymentMode: String

        public var id: String

        public var paymentGateway: String

        public var applicationId: String

        public var collectedBy: String

        public var refundedBy: String

        public var createdOn: String

        public var modifiedOn: String

        public var currentStatus: String

        public var paymentId: String?

        public var paymentModeIdentifier: String

        public var userObject: [String: Any]

        public var aggregatorPaymentObject: [String: Any]?

        public var currency: String

        public var companyId: String

        public var allStatus: [String]

        public enum CodingKeys: String, CodingKey {
            case refundObject = "refund_object"

            case amountInPaisa = "amount_in_paisa"

            case paymentMode = "payment_mode"

            case id

            case paymentGateway = "payment_gateway"

            case applicationId = "application_id"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case currentStatus = "current_status"

            case paymentId = "payment_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case userObject = "user_object"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case currency

            case companyId = "company_id"

            case allStatus = "all_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.refundObject = refundObject

            self.amountInPaisa = amountInPaisa

            self.paymentMode = paymentMode

            self.id = id

            self.paymentGateway = paymentGateway

            self.applicationId = applicationId

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.currentStatus = currentStatus

            self.paymentId = paymentId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.userObject = userObject

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.currency = currency

            self.companyId = companyId

            self.allStatus = allStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            id = try container.decode(String.self, forKey: .id)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            companyId = try container.decode(String.self, forKey: .companyId)

            allStatus = try container.decode([String].self, forKey: .allStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var refundObject: [String: Any]?

        public var amountInPaisa: String

        public var paymentMode: String

        public var id: String

        public var paymentGateway: String

        public var applicationId: String

        public var collectedBy: String

        public var refundedBy: String

        public var createdOn: String

        public var modifiedOn: String

        public var currentStatus: String

        public var paymentId: String?

        public var paymentModeIdentifier: String

        public var userObject: [String: Any]

        public var aggregatorPaymentObject: [String: Any]?

        public var currency: String

        public var companyId: String

        public var allStatus: [String]

        public enum CodingKeys: String, CodingKey {
            case refundObject = "refund_object"

            case amountInPaisa = "amount_in_paisa"

            case paymentMode = "payment_mode"

            case id

            case paymentGateway = "payment_gateway"

            case applicationId = "application_id"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case currentStatus = "current_status"

            case paymentId = "payment_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case userObject = "user_object"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case currency

            case companyId = "company_id"

            case allStatus = "all_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.refundObject = refundObject

            self.amountInPaisa = amountInPaisa

            self.paymentMode = paymentMode

            self.id = id

            self.paymentGateway = paymentGateway

            self.applicationId = applicationId

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.currentStatus = currentStatus

            self.paymentId = paymentId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.userObject = userObject

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.currency = currency

            self.companyId = companyId

            self.allStatus = allStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            id = try container.decode(String.self, forKey: .id)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            companyId = try container.decode(String.self, forKey: .companyId)

            allStatus = try container.decode([String].self, forKey: .allStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)
        }
    }
}
