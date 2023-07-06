

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var priceEffective: Double

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var unitPrice: Double

        public var avlQty: Int

        public var modifiedOn: String

        public var quantity: Int

        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var discount: Double

        public var hsnCodeId: String

        public var transferPrice: Int

        public var priceMarked: Double

        public var amountPaid: Double

        public var storeId: Int

        public var id: String

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case sku

            case priceEffective = "price_effective"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case quantity

            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case discount

            case hsnCodeId = "hsn_code_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case id = "_id"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.priceEffective = priceEffective

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.quantity = quantity

            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.id = id

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var priceEffective: Double

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var unitPrice: Double

        public var avlQty: Int

        public var modifiedOn: String

        public var quantity: Int

        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var discount: Double

        public var hsnCodeId: String

        public var transferPrice: Int

        public var priceMarked: Double

        public var amountPaid: Double

        public var storeId: Int

        public var id: String

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case sku

            case priceEffective = "price_effective"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case quantity

            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case discount

            case hsnCodeId = "hsn_code_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case id = "_id"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.priceEffective = priceEffective

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.quantity = quantity

            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.id = id

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
