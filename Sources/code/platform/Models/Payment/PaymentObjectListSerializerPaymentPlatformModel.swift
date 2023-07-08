

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var companyId: String

        public var userObject: [String: Any]

        public var currency: String

        public var paymentModeIdentifier: String

        public var paymentId: String?

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentMode: String

        public var applicationId: String

        public var createdOn: String

        public var collectedBy: String

        public var refundedBy: String

        public var refundObject: [String: Any]?

        public var id: String

        public var modifiedOn: String

        public var allStatus: [String]

        public var paymentGateway: String

        public var amountInPaisa: String

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case userObject = "user_object"

            case currency

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentId = "payment_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentMode = "payment_mode"

            case applicationId = "application_id"

            case createdOn = "created_on"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case refundObject = "refund_object"

            case id

            case modifiedOn = "modified_on"

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case amountInPaisa = "amount_in_paisa"

            case currentStatus = "current_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.companyId = companyId

            self.userObject = userObject

            self.currency = currency

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentId = paymentId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentMode = paymentMode

            self.applicationId = applicationId

            self.createdOn = createdOn

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.refundObject = refundObject

            self.id = id

            self.modifiedOn = modifiedOn

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.amountInPaisa = amountInPaisa

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(String.self, forKey: .companyId)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currency = try container.decode(String.self, forKey: .currency)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var companyId: String

        public var userObject: [String: Any]

        public var currency: String

        public var paymentModeIdentifier: String

        public var paymentId: String?

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentMode: String

        public var applicationId: String

        public var createdOn: String

        public var collectedBy: String

        public var refundedBy: String

        public var refundObject: [String: Any]?

        public var id: String

        public var modifiedOn: String

        public var allStatus: [String]

        public var paymentGateway: String

        public var amountInPaisa: String

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case userObject = "user_object"

            case currency

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentId = "payment_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentMode = "payment_mode"

            case applicationId = "application_id"

            case createdOn = "created_on"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case refundObject = "refund_object"

            case id

            case modifiedOn = "modified_on"

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case amountInPaisa = "amount_in_paisa"

            case currentStatus = "current_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.companyId = companyId

            self.userObject = userObject

            self.currency = currency

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentId = paymentId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentMode = paymentMode

            self.applicationId = applicationId

            self.createdOn = createdOn

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.refundObject = refundObject

            self.id = id

            self.modifiedOn = modifiedOn

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.amountInPaisa = amountInPaisa

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(String.self, forKey: .companyId)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currency = try container.decode(String.self, forKey: .currency)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}
