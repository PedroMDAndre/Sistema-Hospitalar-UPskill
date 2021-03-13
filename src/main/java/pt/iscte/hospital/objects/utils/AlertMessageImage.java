package pt.iscte.hospital.objects.utils;

public enum AlertMessageImage {
    // TODO alert message image
    FAILURE("/imagens/draw_error.svg"),
    SUCCESS("/imagens/draw_success.svg");

    private String imageURL;

    AlertMessageImage(String imageURL) {
        this.imageURL = imageURL;
    }

    public String getImageURL() {
        return imageURL;
    }
}