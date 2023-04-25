

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var comment: String?

        public var createdOn: String

        public var transferMode: String

        public var accountNo: String

        public var mobile: String?

        public var delightsUserName: String?

        public var beneficiaryId: String

        public var accountHolder: String

        public var ifscCode: String

        public var branchName: String?

        public var modifiedOn: String

        public var isActive: Bool

        public var id: Int

        public var title: String

        public var subtitle: String

        public var displayName: String

        public var bankName: String

        public var email: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case comment

            case createdOn = "created_on"

            case transferMode = "transfer_mode"

            case accountNo = "account_no"

            case mobile

            case delightsUserName = "delights_user_name"

            case beneficiaryId = "beneficiary_id"

            case accountHolder = "account_holder"

            case ifscCode = "ifsc_code"

            case branchName = "branch_name"

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case id

            case title

            case subtitle

            case displayName = "display_name"

            case bankName = "bank_name"

            case email

            case address
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.comment = comment

            self.createdOn = createdOn

            self.transferMode = transferMode

            self.accountNo = accountNo

            self.mobile = mobile

            self.delightsUserName = delightsUserName

            self.beneficiaryId = beneficiaryId

            self.accountHolder = accountHolder

            self.ifscCode = ifscCode

            self.branchName = branchName

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.id = id

            self.title = title

            self.subtitle = subtitle

            self.displayName = displayName

            self.bankName = bankName

            self.email = email

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            id = try container.decode(Int.self, forKey: .id)

            title = try container.decode(String.self, forKey: .title)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            displayName = try container.decode(String.self, forKey: .displayName)

            bankName = try container.decode(String.self, forKey: .bankName)

            email = try container.decode(String.self, forKey: .email)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var comment: String?

        public var createdOn: String

        public var transferMode: String

        public var accountNo: String

        public var mobile: String?

        public var delightsUserName: String?

        public var beneficiaryId: String

        public var accountHolder: String

        public var ifscCode: String

        public var branchName: String?

        public var modifiedOn: String

        public var isActive: Bool

        public var id: Int

        public var title: String

        public var subtitle: String

        public var displayName: String

        public var bankName: String

        public var email: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case comment

            case createdOn = "created_on"

            case transferMode = "transfer_mode"

            case accountNo = "account_no"

            case mobile

            case delightsUserName = "delights_user_name"

            case beneficiaryId = "beneficiary_id"

            case accountHolder = "account_holder"

            case ifscCode = "ifsc_code"

            case branchName = "branch_name"

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case id

            case title

            case subtitle

            case displayName = "display_name"

            case bankName = "bank_name"

            case email

            case address
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.comment = comment

            self.createdOn = createdOn

            self.transferMode = transferMode

            self.accountNo = accountNo

            self.mobile = mobile

            self.delightsUserName = delightsUserName

            self.beneficiaryId = beneficiaryId

            self.accountHolder = accountHolder

            self.ifscCode = ifscCode

            self.branchName = branchName

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.id = id

            self.title = title

            self.subtitle = subtitle

            self.displayName = displayName

            self.bankName = bankName

            self.email = email

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            id = try container.decode(Int.self, forKey: .id)

            title = try container.decode(String.self, forKey: .title)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            displayName = try container.decode(String.self, forKey: .displayName)

            bankName = try container.decode(String.self, forKey: .bankName)

            email = try container.decode(String.self, forKey: .email)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
