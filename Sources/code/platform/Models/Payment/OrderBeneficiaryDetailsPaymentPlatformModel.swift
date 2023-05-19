

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var transferMode: String

        public var id: Int

        public var createdOn: String

        public var beneficiaryId: String

        public var email: String

        public var mobile: String?

        public var comment: String?

        public var branchName: String?

        public var ifscCode: String

        public var accountNo: String

        public var subtitle: String

        public var delightsUserName: String?

        public var accountHolder: String

        public var title: String

        public var address: String

        public var displayName: String

        public var modifiedOn: String

        public var isActive: Bool

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case transferMode = "transfer_mode"

            case id

            case createdOn = "created_on"

            case beneficiaryId = "beneficiary_id"

            case email

            case mobile

            case comment

            case branchName = "branch_name"

            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case subtitle

            case delightsUserName = "delights_user_name"

            case accountHolder = "account_holder"

            case title

            case address

            case displayName = "display_name"

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case bankName = "bank_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.transferMode = transferMode

            self.id = id

            self.createdOn = createdOn

            self.beneficiaryId = beneficiaryId

            self.email = email

            self.mobile = mobile

            self.comment = comment

            self.branchName = branchName

            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.subtitle = subtitle

            self.delightsUserName = delightsUserName

            self.accountHolder = accountHolder

            self.title = title

            self.address = address

            self.displayName = displayName

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.bankName = bankName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            id = try container.decode(Int.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            email = try container.decode(String.self, forKey: .email)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            title = try container.decode(String.self, forKey: .title)

            address = try container.decode(String.self, forKey: .address)

            displayName = try container.decode(String.self, forKey: .displayName)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var transferMode: String

        public var id: Int

        public var createdOn: String

        public var beneficiaryId: String

        public var email: String

        public var mobile: String?

        public var comment: String?

        public var branchName: String?

        public var ifscCode: String

        public var accountNo: String

        public var subtitle: String

        public var delightsUserName: String?

        public var accountHolder: String

        public var title: String

        public var address: String

        public var displayName: String

        public var modifiedOn: String

        public var isActive: Bool

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case transferMode = "transfer_mode"

            case id

            case createdOn = "created_on"

            case beneficiaryId = "beneficiary_id"

            case email

            case mobile

            case comment

            case branchName = "branch_name"

            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case subtitle

            case delightsUserName = "delights_user_name"

            case accountHolder = "account_holder"

            case title

            case address

            case displayName = "display_name"

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case bankName = "bank_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.transferMode = transferMode

            self.id = id

            self.createdOn = createdOn

            self.beneficiaryId = beneficiaryId

            self.email = email

            self.mobile = mobile

            self.comment = comment

            self.branchName = branchName

            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.subtitle = subtitle

            self.delightsUserName = delightsUserName

            self.accountHolder = accountHolder

            self.title = title

            self.address = address

            self.displayName = displayName

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.bankName = bankName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            id = try container.decode(Int.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            email = try container.decode(String.self, forKey: .email)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            title = try container.decode(String.self, forKey: .title)

            address = try container.decode(String.self, forKey: .address)

            displayName = try container.decode(String.self, forKey: .displayName)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }
}
