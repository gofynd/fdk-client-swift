

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var storeId: Int

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var avlQty: Int

        public var companyId: Int

        public var amountPaid: Double

        public var discount: Double

        public var priceEffective: Double

        public var fyndStoreId: String

        public var sku: String

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var affiliateStoreId: String

        public var quantity: Int

        public var itemId: Int

        public var identifier: [String: Any]

        public var modifiedOn: String

        public var transferPrice: Int

        public var hsnCodeId: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case discount

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case sku

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case itemId = "item_id"

            case identifier

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.discount = discount

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.sku = sku

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.itemId = itemId

            self.identifier = identifier

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var storeId: Int

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var avlQty: Int

        public var companyId: Int

        public var amountPaid: Double

        public var discount: Double

        public var priceEffective: Double

        public var fyndStoreId: String

        public var sku: String

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var affiliateStoreId: String

        public var quantity: Int

        public var itemId: Int

        public var identifier: [String: Any]

        public var modifiedOn: String

        public var transferPrice: Int

        public var hsnCodeId: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case discount

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case sku

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case itemId = "item_id"

            case identifier

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.discount = discount

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.sku = sku

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.itemId = itemId

            self.identifier = identifier

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
