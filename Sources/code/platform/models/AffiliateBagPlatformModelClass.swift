

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var storeId: Int

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var itemId: Int

        public var priceEffective: Double

        public var id: String

        public var priceMarked: Double

        public var avlQty: Int

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var modifiedOn: String

        public var sku: String

        public var quantity: Int

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var itemSize: String

        public var amountPaid: Double

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case identifier

            case unitPrice = "unit_price"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case id = "_id"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case sku

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case discount

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.id = id

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
