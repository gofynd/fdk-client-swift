

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var amountInPaisa: String

        public var refundedBy: String

        public var userObject: [String: Any]

        public var collectedBy: String

        public var aggregatorPaymentObject: [String: Any]?

        public var companyId: String

        public var modifiedOn: String

        public var paymentId: String?

        public var applicationId: String

        public var currency: String

        public var allStatus: [String]

        public var paymentGateway: String

        public var paymentModeIdentifier: String

        public var createdOn: String

        public var id: String

        public var refundObject: [String: Any]?

        public var currentStatus: String

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case amountInPaisa = "amount_in_paisa"

            case refundedBy = "refunded_by"

            case userObject = "user_object"

            case collectedBy = "collected_by"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case paymentId = "payment_id"

            case applicationId = "application_id"

            case currency

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case paymentModeIdentifier = "payment_mode_identifier"

            case createdOn = "created_on"

            case id

            case refundObject = "refund_object"

            case currentStatus = "current_status"

            case paymentMode = "payment_mode"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.amountInPaisa = amountInPaisa

            self.refundedBy = refundedBy

            self.userObject = userObject

            self.collectedBy = collectedBy

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.paymentId = paymentId

            self.applicationId = applicationId

            self.currency = currency

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.paymentModeIdentifier = paymentModeIdentifier

            self.createdOn = createdOn

            self.id = id

            self.refundObject = refundObject

            self.currentStatus = currentStatus

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currency = try container.decode(String.self, forKey: .currency)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            id = try container.decode(String.self, forKey: .id)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var amountInPaisa: String

        public var refundedBy: String

        public var userObject: [String: Any]

        public var collectedBy: String

        public var aggregatorPaymentObject: [String: Any]?

        public var companyId: String

        public var modifiedOn: String

        public var paymentId: String?

        public var applicationId: String

        public var currency: String

        public var allStatus: [String]

        public var paymentGateway: String

        public var paymentModeIdentifier: String

        public var createdOn: String

        public var id: String

        public var refundObject: [String: Any]?

        public var currentStatus: String

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case amountInPaisa = "amount_in_paisa"

            case refundedBy = "refunded_by"

            case userObject = "user_object"

            case collectedBy = "collected_by"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case paymentId = "payment_id"

            case applicationId = "application_id"

            case currency

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case paymentModeIdentifier = "payment_mode_identifier"

            case createdOn = "created_on"

            case id

            case refundObject = "refund_object"

            case currentStatus = "current_status"

            case paymentMode = "payment_mode"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.amountInPaisa = amountInPaisa

            self.refundedBy = refundedBy

            self.userObject = userObject

            self.collectedBy = collectedBy

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.paymentId = paymentId

            self.applicationId = applicationId

            self.currency = currency

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.paymentModeIdentifier = paymentModeIdentifier

            self.createdOn = createdOn

            self.id = id

            self.refundObject = refundObject

            self.currentStatus = currentStatus

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currency = try container.decode(String.self, forKey: .currency)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            id = try container.decode(String.self, forKey: .id)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
