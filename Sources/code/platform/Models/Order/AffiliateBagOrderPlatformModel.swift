

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var discount: Double

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var sku: String

        public var avlQty: Int

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var storeId: Int

        public var hsnCodeId: String

        public var modifiedOn: String

        public var itemId: Int

        public var deliveryCharge: Double

        public var companyId: Int

        public var unitPrice: Double

        public var amountPaid: Double

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case discount

            case transferPrice = "transfer_price"

            case identifier

            case sku

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.discount = discount

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.sku = sku

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

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
        public var priceMarked: Double

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var discount: Double

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var sku: String

        public var avlQty: Int

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var storeId: Int

        public var hsnCodeId: String

        public var modifiedOn: String

        public var itemId: Int

        public var deliveryCharge: Double

        public var companyId: Int

        public var unitPrice: Double

        public var amountPaid: Double

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case discount

            case transferPrice = "transfer_price"

            case identifier

            case sku

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.discount = discount

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.sku = sku

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
