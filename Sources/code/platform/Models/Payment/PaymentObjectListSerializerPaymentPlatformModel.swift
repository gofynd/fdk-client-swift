

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var allStatus: [String]

        public var refundObject: [String: Any]?

        public var amountInPaisa: String

        public var id: String

        public var paymentGateway: String

        public var currency: String

        public var collectedBy: String

        public var paymentId: String?

        public var createdOn: String

        public var userObject: [String: Any]

        public var currentStatus: String

        public var applicationId: String

        public var paymentModeIdentifier: String

        public var companyId: String

        public var refundedBy: String

        public var modifiedOn: String

        public var paymentMode: String

        public var aggregatorPaymentObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case allStatus = "all_status"

            case refundObject = "refund_object"

            case amountInPaisa = "amount_in_paisa"

            case id

            case paymentGateway = "payment_gateway"

            case currency

            case collectedBy = "collected_by"

            case paymentId = "payment_id"

            case createdOn = "created_on"

            case userObject = "user_object"

            case currentStatus = "current_status"

            case applicationId = "application_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case companyId = "company_id"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case paymentMode = "payment_mode"

            case aggregatorPaymentObject = "aggregator_payment_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.allStatus = allStatus

            self.refundObject = refundObject

            self.amountInPaisa = amountInPaisa

            self.id = id

            self.paymentGateway = paymentGateway

            self.currency = currency

            self.collectedBy = collectedBy

            self.paymentId = paymentId

            self.createdOn = createdOn

            self.userObject = userObject

            self.currentStatus = currentStatus

            self.applicationId = applicationId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.companyId = companyId

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.paymentMode = paymentMode

            self.aggregatorPaymentObject = aggregatorPaymentObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            id = try container.decode(String.self, forKey: .id)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currency = try container.decode(String.self, forKey: .currency)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            companyId = try container.decode(String.self, forKey: .companyId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var allStatus: [String]

        public var refundObject: [String: Any]?

        public var amountInPaisa: String

        public var id: String

        public var paymentGateway: String

        public var currency: String

        public var collectedBy: String

        public var paymentId: String?

        public var createdOn: String

        public var userObject: [String: Any]

        public var currentStatus: String

        public var applicationId: String

        public var paymentModeIdentifier: String

        public var companyId: String

        public var refundedBy: String

        public var modifiedOn: String

        public var paymentMode: String

        public var aggregatorPaymentObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case allStatus = "all_status"

            case refundObject = "refund_object"

            case amountInPaisa = "amount_in_paisa"

            case id

            case paymentGateway = "payment_gateway"

            case currency

            case collectedBy = "collected_by"

            case paymentId = "payment_id"

            case createdOn = "created_on"

            case userObject = "user_object"

            case currentStatus = "current_status"

            case applicationId = "application_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case companyId = "company_id"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case paymentMode = "payment_mode"

            case aggregatorPaymentObject = "aggregator_payment_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.allStatus = allStatus

            self.refundObject = refundObject

            self.amountInPaisa = amountInPaisa

            self.id = id

            self.paymentGateway = paymentGateway

            self.currency = currency

            self.collectedBy = collectedBy

            self.paymentId = paymentId

            self.createdOn = createdOn

            self.userObject = userObject

            self.currentStatus = currentStatus

            self.applicationId = applicationId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.companyId = companyId

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.paymentMode = paymentMode

            self.aggregatorPaymentObject = aggregatorPaymentObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            id = try container.decode(String.self, forKey: .id)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currency = try container.decode(String.self, forKey: .currency)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            companyId = try container.decode(String.self, forKey: .companyId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)
        }
    }
}
