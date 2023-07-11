

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentId: String?

        public var id: String

        public var refundedBy: String

        public var allStatus: [String]

        public var applicationId: String

        public var currency: String

        public var collectedBy: String

        public var userObject: [String: Any]

        public var companyId: String

        public var currentStatus: String

        public var createdOn: String

        public var amountInPaisa: String

        public var paymentMode: String

        public var paymentGateway: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentModeIdentifier: String

        public var modifiedOn: String

        public var refundObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case id

            case refundedBy = "refunded_by"

            case allStatus = "all_status"

            case applicationId = "application_id"

            case currency

            case collectedBy = "collected_by"

            case userObject = "user_object"

            case companyId = "company_id"

            case currentStatus = "current_status"

            case createdOn = "created_on"

            case amountInPaisa = "amount_in_paisa"

            case paymentMode = "payment_mode"

            case paymentGateway = "payment_gateway"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case modifiedOn = "modified_on"

            case refundObject = "refund_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.id = id

            self.refundedBy = refundedBy

            self.allStatus = allStatus

            self.applicationId = applicationId

            self.currency = currency

            self.collectedBy = collectedBy

            self.userObject = userObject

            self.companyId = companyId

            self.currentStatus = currentStatus

            self.createdOn = createdOn

            self.amountInPaisa = amountInPaisa

            self.paymentMode = paymentMode

            self.paymentGateway = paymentGateway

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.modifiedOn = modifiedOn

            self.refundObject = refundObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currency = try container.decode(String.self, forKey: .currency)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            companyId = try container.decode(String.self, forKey: .companyId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(refundObject, forKey: .refundObject)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentId: String?

        public var id: String

        public var refundedBy: String

        public var allStatus: [String]

        public var applicationId: String

        public var currency: String

        public var collectedBy: String

        public var userObject: [String: Any]

        public var companyId: String

        public var currentStatus: String

        public var createdOn: String

        public var amountInPaisa: String

        public var paymentMode: String

        public var paymentGateway: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentModeIdentifier: String

        public var modifiedOn: String

        public var refundObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case id

            case refundedBy = "refunded_by"

            case allStatus = "all_status"

            case applicationId = "application_id"

            case currency

            case collectedBy = "collected_by"

            case userObject = "user_object"

            case companyId = "company_id"

            case currentStatus = "current_status"

            case createdOn = "created_on"

            case amountInPaisa = "amount_in_paisa"

            case paymentMode = "payment_mode"

            case paymentGateway = "payment_gateway"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case modifiedOn = "modified_on"

            case refundObject = "refund_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.id = id

            self.refundedBy = refundedBy

            self.allStatus = allStatus

            self.applicationId = applicationId

            self.currency = currency

            self.collectedBy = collectedBy

            self.userObject = userObject

            self.companyId = companyId

            self.currentStatus = currentStatus

            self.createdOn = createdOn

            self.amountInPaisa = amountInPaisa

            self.paymentMode = paymentMode

            self.paymentGateway = paymentGateway

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.modifiedOn = modifiedOn

            self.refundObject = refundObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currency = try container.decode(String.self, forKey: .currency)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            companyId = try container.decode(String.self, forKey: .companyId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(refundObject, forKey: .refundObject)
        }
    }
}
